require 'spec_helper'

describe 'Index Page', type: :feature do
  before do
    visit "/"
  end
    
  it "responds successfully" do
    expect(page.status_code).to eql(200)
  end

  it 'header displays a title, a hero, and a nav menu' do

    expect(page).to have_css '.header'
    within '.header' do
      expect(page).to have_content "Camron's portfolio"
      expect(page).to have_css 'img'
      expect(page).to have_css '.sidenav'
    end
  end

  it 'project section displays title and project cards' do

    expect(page).to have_css '.projects_section'
    within '.projects_section' do
      expect(page).to have_content 'Projects'
      expect(page).to have_css '.cards'
    end
  end 
      
  it 'about section displays a title, background info, image, and social media links' do

    expect(page).to have_css '.about'
    within '.about' do
      expect(page).to have_content 'About'
      expect(page).to have_css '#about_ul'
    end
    
    expect(page).to have_css '#my_image'
    within '#my_image' do
      expect(page).to have_css 'img'
    end

    expect(page).to have_css '#social_media'
    within '#social_media' do
    expect(page).to have_css 'img'
    expect(page).to have_css 'img'
    end
  end

  it 'contact section displays title and contact form' do

    expect(page).to have_css '.contact'
    within '.contact' do
      expect(page).to have_content 'Contact'
      expect(page).to have_css 'form'
    end
  end 

end
