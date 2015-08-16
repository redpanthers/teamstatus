require 'test_helper'

describe EmployeesController do
  describe "#create" do
    it 'creates a user' do
      user_email = 'test@user.com'
      post :create, user: {email: user_email}
      assert_equal User.last.email, user_email

      assert_redirected_to root_path
    end
  end
end
