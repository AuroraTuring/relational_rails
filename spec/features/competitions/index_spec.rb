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

# As a visitor
# When I visit the parent index,
# I see that records are ordered by most recently created first
# And next to each of the records I see when it was created
  describe "as a visitor" do
    describe "when I visit the parent index" do
      it "I see that records are ordered by most recently created first" do
        new_england = Competition.create!(name: "New England Show", location: "Ohio", date: "04/01/2024", open_to_the_public: true, prize_money: 250)
        south_east = Competition.create!(name: "South East Show", location: "Florida", date: "01/01/2024", open_to_the_public: true, prize_money: 250)

        visit "/competitions"

        ne_index = page.body.index(new_england.name)
        se_index = page.body.index(south_east.name)

        expect(ne_index).to be < se_index
      end

      it "and next to each of the records I see when it was created" do
        new_england = Competition.create!(name: "New England Show", location: "Ohio", date: "04/01/2024", open_to_the_public: true, prize_money: 250)
        south_east = Competition.create!(name: "South East Show", location: "Florida", date: "01/01/2024", open_to_the_public: true, prize_money: 250)

        visit "/competitions"

        expect(page).to have_content(new_england.created_at)
        expect(page).to have_content(south_east.created_at)
      end
    end
  end
end
