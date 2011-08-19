require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @basetitle = 'HAERFEST'
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                                    :content => "#{@basetitle} | Home")
    end

    it "should not have a blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET 'collections'" do
    it "should be successful" do
      get 'collections'
      response.should be_success
    end

    it "should have the right title" do
      get 'collections'
      response.should have_selector("title",
                                    :content => "#{@basetitle} | Collections")
    end
  end

  describe "GET 'styles'" do
    it "should be successful" do
      get 'styles'
      response.should be_success
    end

    it "should have the right title" do
      get 'styles'
      response.should have_selector("title",
                                    :content => "#{@basetitle} | Styles")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector("title",
                                    :content => "#{@basetitle} | About")
    end
  end

  describe "GET 'stockists'" do
    it "should be successful" do
      get 'stockists'
      response.should be_success
    end

    it "should have the right title" do
      get 'stockists'
      response.should have_selector("title",
                                    :content => "#{@basetitle} | Stockists")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title",
                                    :content => "#{@basetitle} | Contact")
    end
  end

end
