require 'spec_helper'

describe "gists" do
	subject { page }

  describe "index" do
  	before { visit root_path }

    it { should have_selector("div") }
    it { should have_selector("a") }
    it { should have_selector("ul") }
    it { should have_selector("li") }
        it { should have_selector("p") }
  	it { should have_title('MyGists') }
    it { should have_content("Sign up log in Home New Gist My Gists Back to Top © Jakub Nowicki 2014") }

  end
end

describe "layouts" do
  subject { page }

  describe "index" do
    before { visit root_path }

    it { should have_selector("div") }
    it { should have_selector("a") }
    it { should have_selector("ul") }
    it { should have_selector("li") }
    it { should have_selector("p") }
    it { should have_title('MyGists') }
            it { should have_content("Sign up log in Home New Gist My Gists Back to Top © Jakub Nowicki 2014") }

  end
end

describe "users" do
  subject { page }

  describe "index" do
    before { visit root_path }

    it { should have_selector("div") }
    it { should have_selector("a") }
    it { should have_selector("ul") }
    it { should have_selector("li") }
        it { should have_selector("p") }
    it { should have_title('MyGists') }
            it { should have_content("Sign up log in Home New Gist My Gists Back to Top © Jakub Nowicki 2014") }

  end
end