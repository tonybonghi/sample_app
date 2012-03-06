require 'spec_helper'
require 'rspec/autorun'

describe PagesController do
  render_views
  
  before(:each) do
    @base_title = "RoR - "
  end

  describe "GET 'home'" do
    it "should be successful" do
      visit '/pages/home'
      page.should have_selector("title", :text => @base_title + "Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      visit '/pages/contact'
      page.should have_selector("title", :text => @base_title + "Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      visit '/pages/about'
      page.should have_selector("title", :text => @base_title + "About")
    end
  end

end
