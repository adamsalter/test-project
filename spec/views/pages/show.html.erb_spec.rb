require 'spec_helper'

describe "/pages/show.html.erb" do
  include PagesHelper
  before(:each) do
    assigns[:page] = @page = stub_model(Page,
      :string => 'title'
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(//)
  end
end
