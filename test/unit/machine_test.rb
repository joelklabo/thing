require 'test_helper'

class MachineTest < ActiveSupport::TestCase
  test "Machine needs an address" do
    machine = Machine.new :name => 'the maker', :kind => 'thinger', :user => users(:user_one)
    assert !machine.save, "You saved the post without an address"
  end
  test "Machine needs a name" do
    machine = Machine.new :address => '123 butt ln', :kind => 'thingy', :user => users(:user_one)
    assert !machine.save, "You saved the post without a name"
  end
  test "Machine needs a kind" do
    machine = Machine.new :address => '4 idiot road', :name => 'worst nightmare', :user => users(:user_one)
    assert !machine.save, "You saved the post without a kind"
  end
  test "Machine needs a user" do
    machine = Machine.new :address => 'boring route', :name => 'makey', :kind => 'makerbot'
    assert !machine.save, "You have no user"
  end
  test "Machine should be able to save with all attributes" do 
    machine = Machine.new :address => 'dumb place', :name => 'junky', :kind => 'makibox', :user => users(:user_one)
    assert machine.save, "The machine instance did not save. Even with all attrs"
  end
  test "Machine one should be associated with user one" do
    machine = machines(:machine_one)
    assert machine.user == users(:user_one), "User one is not associated with Machine one"
  end
  test "Machine one should NOT be associated with user two" do
    machine = machines(:machine_one)
    assert_not_equal machine.user == users(:user_two), "User two is associated with Machine one"
  end
  test "There should be 2 Machines" do
    count = Machine.count
    assert count == 2, "There should be only two machines"
  end
end
