require 'spec_helper'

describe "gists/show" do
  before(:each) do
    @gist = assign(:gist, stub_model(Gist,
      :snippet => "MyText",
      :lang => "Lang",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/Lang/)
    rendered.should match(/Description/)
  end
end
