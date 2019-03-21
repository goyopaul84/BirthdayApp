
require_relative '../../app.rb'
#
feature "name" do
    scenario "Can request name and return this on next page" do
      visit('/')
      fill_in :name, with: "Greg"
      # fill_in :day, with: "12"
      # fill_in :month, with: "January"
      click_button "Go!"
      expect(page).to have_content("Greg")
    end
  end

  feature "/birthday page" do
    scenario "displays name and day if passed through form" do
      visit('/')
      fill_in :name, with: "Greg"
      fill_in :day, with: "12"
      click_button "Go!"
      expect(page).to have_content("Greg 12")
      end
    end 

  feature "/birthday page" do
    scenario "displays name and day if passed through form" do
          visit('/')
          fill_in :name, with: "Greg"
          fill_in :day, with: "12"
          fill_in :month, with: "January"
          click_button "Go!"
          expect(page).to have_content("Greg 12")
        end
      end
