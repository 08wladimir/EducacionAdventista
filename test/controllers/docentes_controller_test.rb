require 'test_helper'

class DocentesControllerTest < ActionController::TestCase
  setup do
    @docente = docentes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:docentes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create docente" do
    assert_difference('Docente.count') do
      post :create, docente: { apellido: @docente.apellido, area: @docente.area, cargo: @docente.cargo, cedula: @docente.cedula, colegio_id: @docente.colegio_id, email: @docente.email, nombre: @docente.nombre, telefono: @docente.telefono, titulos: @docente.titulos }
    end

    assert_redirected_to docente_path(assigns(:docente))
  end

  test "should show docente" do
    get :show, id: @docente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @docente
    assert_response :success
  end

  test "should update docente" do
    patch :update, id: @docente, docente: { apellido: @docente.apellido, area: @docente.area, cargo: @docente.cargo, cedula: @docente.cedula, colegio_id: @docente.colegio_id, email: @docente.email, nombre: @docente.nombre, telefono: @docente.telefono, titulos: @docente.titulos }
    assert_redirected_to docente_path(assigns(:docente))
  end

  test "should destroy docente" do
    assert_difference('Docente.count', -1) do
      delete :destroy, id: @docente
    end

    assert_redirected_to docentes_path
  end
end
