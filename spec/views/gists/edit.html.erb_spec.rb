require 'spec_helper'

describe "gists/edit" do
  before(:each) do
    @gist = assign(:gist, stub_model(Gist,
      :snippet => "MyText",
      :lang => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit gist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gist_path(@gist), "post" do
      assert_select "textarea#gist_snippet[name=?]", "gist[snippet]"
      assert_select "input#gist_lang[name=?]", "gist[lang]"
      assert_select "input#gist_description[name=?]", "gist[description]"
    end
  end
end
