require 'spec_helper'

describe "/users/show.html.erb" do
  include UsersHelper
  before(:each) do
    assigns[:user] = @user = stub_model(User,
      :string => 'name'
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(//)
  end
end
