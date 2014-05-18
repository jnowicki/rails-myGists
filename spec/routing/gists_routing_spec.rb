require "spec_helper"

describe GistsController do
  describe "routing gists" do

    it "routes to gists#new" do
      expect(:get => "/gists/new").to route_to("gists#new")
    end

    it "routes to #show" do
      expect(:get => "/gists/1").to route_to("gists#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/gists/1/edit").to route_to("gists#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/gists").to route_to("gists#create")
    end

    it "routes to #update" do
      expect(:put => "/gists/1").to route_to("gists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gists/1").to route_to("gists#destroy", :id => "1")
    end

describe "routes for gists" do
  it "routes /gists to the gists controller" do
    expect(:get => "/").
      to route_to(:controller => "gists", :action => "index")
  end
end

  end
end