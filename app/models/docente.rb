class Docente < ActiveRecord::Base
  belongs_to :colegio
  before_save :default_values
  cattr_accessor :current_usuario
  
  def default_values
    self.creado_by ||= Docente.current_usuario.usuario
  end
  
end
