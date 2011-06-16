require "spec_helper"

describe StartupsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/startups" }.should route_to(:controller => "startups", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/startups/new" }.should route_to(:controller => "startups", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/startups/1" }.should route_to(:controller => "startups", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/startups/1/edit" }.should route_to(:controller => "startups", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/startups" }.should route_to(:controller => "startups", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/startups/1" }.should route_to(:controller => "startups", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/startups/1" }.should route_to(:controller => "startups", :action => "destroy", :id => "1")
    end

  end
end
