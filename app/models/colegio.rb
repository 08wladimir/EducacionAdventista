class Colegio < ActiveRecord::Base
    has_many :docentes
    has_attached_file :logo, styles: { croppable: "491x343", medium: "1280x720" }
    validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
    before_save :default_values
    cattr_accessor :current_usuario
    
    
    
    def default_values
        self.creado_by ||= Colegio.current_usuario.usuario
    end
end
