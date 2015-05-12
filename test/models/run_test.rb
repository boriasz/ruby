require 'test_helper'

class RunTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    # This code is not idiomatically correct.
    @run = @user.runs.build(distance: 10, date: Date.today)
  end

  test "should be valid" do
    assert @run.valid?
  end

  test "user id should be present" do
    @run.user_id = nil
    assert_not @run.valid?
  end
end
