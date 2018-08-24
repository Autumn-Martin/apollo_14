require 'rails_helper'

describe 'user sees all astronauts' do
  describe 'they visit /astronauts' do
  it 'it displays all astronauts' do
    astronaut_1 = Astronaut.create!(name: "Neil Armstrong" , age: 37, job: "Commander")
    astronaut_2 = Astronaut.create!(name: "Mae Jemison" , age: 32, job: "Commander")

    visit '/astronauts'

    expect(page).to have_link(astronaut_1.name)
    expect(page).to have_link(astronaut_2.name)
    end
  end 
end
