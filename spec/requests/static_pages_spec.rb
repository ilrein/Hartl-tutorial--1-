require 'spec_helper'

describe "Static pages" do

let(:base_title) {"Ruby on Rails Tutorial Sample App"} 


  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_title("#{base_title}")
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title('Sample App')
    end

    it "should not have a custom page title" do
      visit root_path
      expect(page).not_to have_title('Home') 

  end
end

  describe "Help page" do

  	it "should have the content 'Help' " do
  		visit help_path
  		expect(page).to have_content('Help')
  	end

    it "should have the title: 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

  end

  describe "About page" do 

    it "should have the content 'About'" do
      visit about_path
      expect(page).to have_content('About')
    end
  end

  it "should have the right title" do
    visit about_path
    expect(page).to have_title("About")
  end

  describe "Contact page" do

    it "should have a name for a new contact" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact" do
      visit contact_path
      expect(page).to have_title('Contact')

    end
  end

end