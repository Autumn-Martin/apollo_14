require 'rails_helper'
before(:each) do
  astronaut_1 = Astronaut.create!(name: "Neil Armstrong" , age: 37, job: "Commander")
  astronaut_2 = Astronaut.create!(name: "Mae Jemison" , age: 32, job: "Commander")
end

describe 'user sees each astronauts missions in alphabetical order' do
  describe 'they visit /astronauts' do
    it 'displays each astronauts missions in alphabetical order' do
      visit '/astronauts'

      expect(page).to have_content(@astronaut_2.mission_1)
    end
  end
end
