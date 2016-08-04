class RegistrationsController < Devise::RegistrationsController
    before_action :authenticate_usuario!
    skip_before_filter :require_no_authentication, only: [:new, :create, :edit, :update]
    
    
    def new
        super
    end
    
    def create
        build_resource(sign_up_params)
        resource.save
        @user = 
        yield resource if block_given?
        if resource.persisted?
          if resource.active_for_authentication?
            redirect_to usuarios_path
          else
            set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
            expire_data_after_sign_in!
            respond_with resource, location: after_inactive_sign_up_path_for(resource)
          end
        else
          clean_up_passwords resource
          set_minimum_password_length
          respond_with resource
        end
    end
    
    def edit
        super
    end
    
    def update
        self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
            prev_unconfirmed_email = resource.unconfirmed_email if resource.respond_to?(:unconfirmed_email)
            resource_updated = update_resource(resource, account_update_params)
            yield resource if block_given?
            if resource_updated
              if is_flashing_format?
                flash_key = update_needs_confirmation?(resource, prev_unconfirmed_email) ?
                  :update_needs_confirmation : :updated
                set_flash_message :notice, flash_key
              end
              sign_in resource_name, resource, bypass: true
              respond_with resource, location: after_update_path_for(resource)
            else
              clean_up_passwords resource
              respond_with resource
            end
    end
    
    private
    def sign_up_params
        allow = [:email, :usuario, :password, :password_confirmation, :nombre, 
                    :apellido, :cover, :rol, :tipoUsuario, :tel1, :tel2, :office_id]
        params.require(resource_name).permit(allow)
    end
    
    def account_update_params
    params.require(:usuario).permit(:email, :usuario, :password, :password_confirmation, :nombre, 
                    :apellido, :cover, :tipoUsuario, :tel1, :tel2, :rol_id, :current_password)
    end
    
end