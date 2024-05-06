require "rails_helper"

RSpec.describe "competitions index page", type: :feature do
  # As a visitor
  # When I visit '/parents'
  # Then I see the name of each parent record in the system
  describe "as a visitor" do
    describe "when I visit '/competitions'" do
      it "then I see the name of each competitions record in the system" do
        new_england = Competition.create!(name: "New England Show", location: "Ohio", date: "04/01/2024", open_to_the_public: true, prize_money: 250)
        south_east = Competition.create!(name: "South East Show", location: "Florida", date: "01/01/2024", open_to_the_public: true, prize_money: 250)

        visit "/competitions"

        expect(page).to have_content(new_england.name)
        expect(page).to have_content(south_east.name)
      end
    end
  end
end
