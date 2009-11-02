require 'spec_helper'

describe "/pages/edit.html.erb" do
  include PagesHelper

  before(:each) do
    assigns[:page] = @page = stub_model(Page,
      :new_record? => false,
      :string => 'title'
    )
  end

  it "renders the edit page form" do
    render

    response.should have_tag("form[action=#{page_path(@page)}][method=post]") do
      with_tag('input#page_string[name=?]', "page[string]")
    end
  end
end
