require "test_helper"

class UserTest < ActiveSupport::TestCase
  def teardown
    User.delete_all
  end

  # test for valid user
  test "valid user" do
    user = User.new(
      email: "mail55@test.com",
      password: "password",
      password_confirmation: "password",
    )
    assert user.valid?
  end

  # test to validate jwt token
  test "validate jwt token" do
    user = User.create(
      email: "mail23@test.com",
      password: "password",
      password_confirmation: "password",
      )
  end
end
