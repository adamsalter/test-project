require 'spec_helper'

describe "/users/index.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:users] = [
      stub_model(User,
        :string => 'name'
      ),
      stub_model(User,
        :string => 'name'
      )
    ]
  end

  it "renders a list of users" do
    render
    response.should have_tag("tr>td", 'name'.to_s, 2)
  end
end
