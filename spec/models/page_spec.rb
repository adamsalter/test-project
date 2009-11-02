require 'spec_helper'

describe Page do
  fixtures :pages

  before(:each) do
    @valid_attributes = {
      :title => 'title'
    }
  end

  it "shouldn't have any users" do
    User.first.should be_nil
  end

  it "should create a new instance given valid attributes" do
    Page.create!(@valid_attributes)
  end
end
