class WelcomeController < ApplicationController
  before_action :authenticate_usuario!
  def index
  @colegios = Colegio.all
  end
end
