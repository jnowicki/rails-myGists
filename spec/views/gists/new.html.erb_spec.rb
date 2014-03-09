require 'spec_helper'

describe "gists/new" do
  before(:each) do
    assign(:gist, stub_model(Gist,
      :snippet => "MyText",
      :lang => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new gist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gists_path, "post" do
      assert_select "textarea#gist_snippet[name=?]", "gist[snippet]"
      assert_select "input#gist_lang[name=?]", "gist[lang]"
      assert_select "input#gist_description[name=?]", "gist[description]"
    end
  end
end
