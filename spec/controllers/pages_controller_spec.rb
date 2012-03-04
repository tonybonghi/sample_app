require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should have_selector("title", 
                  :content => "RoR - Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should have_selector("title", 
                  :content => "RoR - Contact")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should have_selector("title", 
                  :content => "RoR - About")
    end
  end

end
