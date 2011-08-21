require 'spec_helper'

describe "LayoutLinks" do

  it "should have a Home page at '/'" do
    get '/'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Collections page at '/collections'" do
    get '/collections'
    response.should have_selector('title', :content => "Collections")
  end

  it "should have a Styles page at '/styles'" do
    get '/styles'
    response.should have_selector('title', :content => "Styles")
  end

  it "should have an About page at '/about'" do
    get '/about'
    response.should have_selector('title', :content => "About")
  end

  it "should have a Stockists page at '/stockists'" do
    get '/stockists'
    response.should have_selector('title', :content => "Stockists")
  end

  it "should have a Stockists page at '/inspiration'" do
    get '/inspiration'
    response.should have_selector('title', :content => "Inspiration")
  end

  it "should have a Contact page at '/contact'" do
    get '/contact'
    response.should have_selector('title', :content => "Contact")
  end

end
