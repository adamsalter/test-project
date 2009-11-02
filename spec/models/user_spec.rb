require 'spec_helper'

describe User do
  fixtures :users

  before(:each) do
    @valid_attributes = {
      :name => "name"
    }
  end

  it "shouldn't have any pages" do
    Page.first.should be_nil
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
end
