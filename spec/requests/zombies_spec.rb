require 'spec_helper'

describe "Zombies" do
    it "should create a zombie" do
      visit new_zombie_path
      fill_in "Name", :with => "Ash"
      fill_in "Graveyard", :with => "Unga Bunga Villa"
      click_button "Create Zombie"
      page.should have_content "Added Zombie"
      page.should have_content "Ash"
    end
end
