require 'test_helper'

class UserFlowTest < ActionDispatch::IntegrationTest
  test "should save" do
    user = User.create(email:"me@mail.ru", encrypted_password:"111111")
    assert user.save
  end
end
