require 'test_helper'

describe EmployeesController do
  let(:admin) { User.create(email: 'admin@test.com', password: 'password', is_admin: true)}
  let(:user_email) {'test@user.com'}

  describe "#create" do
    it 'creates a user' do
      sign_in admin
      post :create, user: {email: user_email}

      user = User.last
      assert_equal user.email, user_email
      refute user.is_admin?

      assert_redirected_to root_path
    end

    it 'prevents access if not admin' do
      assert_no_difference 'User.count' do
        post :create, user: {email: user_email}
      end

      assert_redirected_to root_path
    end
  end
end
