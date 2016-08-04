class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  before_save :default_values
  cattr_accessor :current_usuario
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
    has_attached_file :foto, styles: { thumb: "489x326" }
    validates_attachment_content_type :foto, content_type: /\Aimage\/.*\Z/
    
    validates :usuario, presence: true, uniqueness: true,
            length: {in: 5..20, too_short: "Debes tener al menos 5 caracteres", too_long: "Puedes tener máximo 20 caracteres"},
            format: {with: /([A-Za-z0-9\-\_]+)/, message: "Tu usuario solo puede contener letras, numeros y guiones"}
            


  def default_values
    self.creado_by ||= Usuario.current_usuario.usuario
  end

end
