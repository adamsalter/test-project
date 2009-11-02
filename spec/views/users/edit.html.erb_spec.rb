require 'spec_helper'

describe "/users/edit.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:user] = @user = stub_model(User,
      :new_record? => false,
      :string => 'name'
    )
  end

  it "renders the edit user form" do
    render

    response.should have_tag("form[action=#{user_path(@user)}][method=post]") do
      with_tag('input#user_string[name=?]', "user[string]")
    end
  end
end
