require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
      :name => "name"
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
end