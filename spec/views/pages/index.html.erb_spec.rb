require 'spec_helper'

describe "/pages/index.html.erb" do
  include PagesHelper

  before(:each) do
    assigns[:pages] = [
      stub_model(Page,
        :string => 'title'
      ),
      stub_model(Page,
        :string => 'title'
      )
    ]
  end

  it "renders a list of pages" do
    render
    response.should have_tag("tr>td", 'title'.to_s, 2)
  end
end
