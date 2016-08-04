class UsuariosController < ApplicationController
  before_action :authenticate_usuario!

  def index
    if current_usuario.rol == "Administrador"
      @users = Usuario.all
    end
    if current_usuario.rol == "Administrador Union"
      @users = Usuario.where("creado_by = ?", current_usuario.usuario)
    end
        if current_usuario.rol == "Administrador Campo"
      @users = Usuario.where("creado_by = ?", current_usuario.usuario)
    end
    
  end

  def show
    @user = Usuario.find(params[:id])
  end

  def edit
    @user = Usuario.find(params[:id])
  end
  
  def update
    respond_to do |format|
      @user = Usuario.find(params[:id])
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  def destroy
    @user = Usuario.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_path, notice: 'User aso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  
  
  def user_params
      params.require(:usuario).permit(:email, :usuario, :password, :password_confirmation, :nombre, 
                    :apellido, :cover, :tipoUsuario, :tel1, :tel2, :rol_id, :current_password)
  end
  

end