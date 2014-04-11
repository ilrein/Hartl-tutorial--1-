require 'spec_helper'

describe "Static pages" do

let(:base_title) {"Ruby on Rails Tutorial Sample App"} 


  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title('Sample App')
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('Home') 

  end
end

  describe "Help page" do

  	it "should have the content 'Help' " do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end
  end

  describe "About page" do 
    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end
  end

  it "should have the right title" do
    visit '/static_pages/home'
    expect(page).to have_title("Ruby")
  end

  describe "Contact page" do
    it "should have a name for a new contact" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
  end

end