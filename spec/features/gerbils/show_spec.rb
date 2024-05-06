

require "rails_helper"

RSpec.describe "gerbils show page", type: :feature do
  # As a visitor
  # When I visit '/child_table_name/:id'
  # Then I see the child with that id including the child's attributes
  # (data from each column that is on the child table)
  describe "as a visitor" do
    describe "when I visit '/gerbils/:id'" do
      it "Then I see the child with that id including the child's attributes" do
        new_england = Competition.create!(name: "New England Show", location: "Ohio", date: "04/01/2024", open_to_the_public: true, prize_money: 250)
        crystal = Gerbil.create!(competition_id: new_england.id, name: "Crystal", color: "Mottled Lilac", age: 2.5, neutered: false)

        visit "/gerbils/#{crystal.id}"

        expect(page).to have_content(crystal.name)
        expect(page).to have_content(crystal.color)
        expect(page).to have_content(crystal.age)
        expect(page).to have_content(crystal.neutered)
      end
    end
  end
end
