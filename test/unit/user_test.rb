require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "User needs an email" do
    user = User.new :name => 'joelsbeardalso'
    assert !user.save, "You saved the post without an email"
  end
  test "User needs a name" do
    user = User.new :email => 'joel@dumb.com'
    assert !user.save, "You saved the post without a name"
  end
  test "User should save with a name and an email" do
    user = User.new :name => 'joel', :email => 'joel@dumb.com'
    assert user.save, "You couldn't save the user with an email and a name"
  end
end
