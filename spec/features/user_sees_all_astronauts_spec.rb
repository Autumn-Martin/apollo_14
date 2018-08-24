require 'rails_helper'

describe 'user sees all astronauts and their attributes' do
  describe 'they visit /astronauts' do
  it 'displays all astronauts and their attributes' do
    astronaut_1 = Astronaut.create!(name: "Neil Armstrong" , age: 37, job: "Commander")
    astronaut_2 = Astronaut.create!(name: "Mae Jemison" , age: 32, job: "Commander")

    visit '/astronauts'

    expect(page).to have_content(astronaut_1.name)
    expect(page).to have_content(astronaut_1.age)
    expect(page).to have_content(astronaut_1.job)
    expect(page).to have_content(astronaut_2.name)
    expect(page).to have_content(astronaut_2.age)
    expect(page).to have_content(astronaut_2.job)
    end
  end

  describe 'user sees the average age of all astronauts' do
    describe 'they visit /astronauts' do
      it 'displays the average age of all astronauts' do
        astronaut_1 = Astronaut.create!(name: "Neil Armstrong" , age: 37, job: "Commander")
        astronaut_2 = Astronaut.create!(name: "Mae Jemison" , age: 32, job: "Commander")

        visit '/astronauts'

        expect(page).to have_content("#{Astronaut.average_age}")
      end
    end
  end

end
