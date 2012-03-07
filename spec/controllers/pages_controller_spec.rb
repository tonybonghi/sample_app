require 'spec_helper'
require 'rspec/autorun'

describe PagesController do
  render_views
  
  before(:each) do
    @base_title = "RoR - "
  end

  describe "GET 'home'" do
    it "should be successful" do
      get root_path
      page.should have_selector("title", :text => full_title("Home"))
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get contact_path
      page.should have_selector("title", :text => @base_title + "Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get about_path
      page.should have_selector("title", :text => @base_title + "About")
    end
  end

end
