require "rails_helper"

RSpec.describe "gerbils index page", type: :feature do
  # As a visitor
  # When I visit '/child_table_name'
  # Then I see each Child in the system including the Child's attributes
  # (data from each column that is on the child table)
  describe "as a visitor" do
    describe "when I visit '/gerbils'" do
      it "then I see each Gerbil in the system including the Gerbil's attributes" do
        new_england = Competition.create!(name: "New England Show", location: "Ohio", date: "04/01/2024", open_to_the_public: true, prize_money: 250)
        crystal = Gerbil.create!(competition_id: new_england.id, name: "Crystal", color: "Mottled Lilac", age: 2.5, neutered: false)
        jasper = Gerbil.create!(competition_id: new_england.id, name: "Jasper", color: "Polar Fox", age: 3, neutered: false)

        visit "/gerbils"

        expect(page).to have_content(crystal.name)
        expect(page).to have_content(crystal.color)
        expect(page).to have_content(crystal.age)
        expect(page).to have_content(crystal.neutered)
        expect(page).to have_content(jasper.name)
        expect(page).to have_content(jasper.color)
        expect(page).to have_content(jasper.age)
        expect(page).to have_content(jasper.neutered)
      end
    end
  end
end
