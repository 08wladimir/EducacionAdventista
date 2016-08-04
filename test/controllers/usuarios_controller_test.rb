require 'test_helper'

class UsuariosControllerTest < ActionController::TestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario" do
    assert_difference('Usuario.count') do
      post :create, usuario: { current_sign_in_at: @usuario.current_sign_in_at, current_sign_in_ip: @usuario.current_sign_in_ip, email: @usuario.email, encrypted_password: @usuario.encrypted_password, foto_content_type: @usuario.foto_content_type, foto_file_name: @usuario.foto_file_name, foto_file_size: @usuario.foto_file_size, foto_updated_at: @usuario.foto_updated_at, last_sign_in_at: @usuario.last_sign_in_at, last_sign_in_ip: @usuario.last_sign_in_ip, nombre: @usuario.nombre, remember_created_at: @usuario.remember_created_at, reset_password_sent_at: @usuario.reset_password_sent_at, reset_password_token: @usuario.reset_password_token, rol: @usuario.rol, sign_in_count: @usuario.sign_in_count, usuario: @usuario.usuario }
    end

    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should show usuario" do
    get :show, id: @usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario
    assert_response :success
  end

  test "should update usuario" do
    patch :update, id: @usuario, usuario: { current_sign_in_at: @usuario.current_sign_in_at, current_sign_in_ip: @usuario.current_sign_in_ip, email: @usuario.email, encrypted_password: @usuario.encrypted_password, foto_content_type: @usuario.foto_content_type, foto_file_name: @usuario.foto_file_name, foto_file_size: @usuario.foto_file_size, foto_updated_at: @usuario.foto_updated_at, last_sign_in_at: @usuario.last_sign_in_at, last_sign_in_ip: @usuario.last_sign_in_ip, nombre: @usuario.nombre, remember_created_at: @usuario.remember_created_at, reset_password_sent_at: @usuario.reset_password_sent_at, reset_password_token: @usuario.reset_password_token, rol: @usuario.rol, sign_in_count: @usuario.sign_in_count, usuario: @usuario.usuario }
    assert_redirected_to usuario_path(assigns(:usuario))
  end

  test "should destroy usuario" do
    assert_difference('Usuario.count', -1) do
      delete :destroy, id: @usuario
    end

    assert_redirected_to usuarios_path
  end
end
