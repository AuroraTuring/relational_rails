require "rails_helper"

RSpec.describe "competitions show page", type: :feature do
  # As a visitor
  # When I visit '/parents/:id'
  # Then I see the parent with that id including the parent's attributes
  # (data from each column that is on the parent table)
  describe "as a visitor" do
    describe "when I visit '/competitions/:id'" do
      it "then I see the competition with that id including the competition's attributes" do
        new_england = Competition.create!(name: "New England Show", location: "Ohio", date: "04/01/2024", open_to_the_public: true, prize_money: 250)

        visit "/competitions/#{new_england.id}"

        expect(page).to have_content(new_england.location)
      end

        # As a visitor
        # When I visit a parent's show page
        # I see a count of the number of children associated with this parent
      it "I see a count of the number of children associated with this parent" do
        new_england = Competition.create!(name: "New England Show", location: "Ohio", date: "04/01/2024", open_to_the_public: true, prize_money: 250)
        Gerbil.create!(competition_id: new_england.id, name: "Crystal", color: "Mottled Lilac", age: 2.5, neutered: false)
        Gerbil.create!(competition_id: new_england.id, name: "Jasper", color: "Polar Fox", age: 3, neutered: false)

        visit "/competitions/#{new_england.id}"

        expect(page).to have_content("2 gerbils")
      end
    end
  end
end
