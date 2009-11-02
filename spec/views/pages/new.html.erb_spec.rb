require 'spec_helper'

describe "/pages/new.html.erb" do
  include PagesHelper

  before(:each) do
    assigns[:page] = stub_model(Page,
      :new_record? => true,
      :string => 'title'
    )
  end

  it "renders new page form" do
    render

    response.should have_tag("form[action=?][method=post]", pages_path) do
      with_tag("input#page_string[name=?]", "page[string]")
    end
  end
end
