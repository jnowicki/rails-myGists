require 'spec_helper'

describe "Users" do
	subject { page }

	describe "new" do
		it { should have_title("") }

	before { visit sign_up_path }
		let(:submit) { "Create User" }

		describe "with invalid info" do
			it "should not create a user" do
				expect { click_button submit }.not_to change(User, :count)
			end
		end

		describe "with valid info" do
			before do
				fill_in "Email",					with: "daksds@interia.pl"
				fill_in "Password",					with: "fsdf"
				fill_in "Password confirmation",			with: "fsdf"
			end

			it "should create a user" do
				expect { click_button submit }.to change(User, :count).by(1)
			end

			describe "after saving the user" do
				before { click_button submit }
				let(:user) { User.find_by(email: 'daksds@interia.pl') }
			end
		end
	end
end