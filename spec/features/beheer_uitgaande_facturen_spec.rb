require 'spec_helper'

feature 'Beheer uitgaande fakturen:' do
  scenario 'Maak een nieuwe factuur aan' do
    facturen = FactoryGirl.create_list(:factuur, 3)

    visit '/facturen'
    facturen.each do |factuur|
      page.should have_text factuur.ontvanger
      page.should have_text factuur.bedrag
    end

    click_link 'Nieuwe factuur ...'

    ontvanger = Faker::Company.name
    fill_in 'Ontvanger', with: ontvanger
    fill_in 'Bedrag',    with: 2100
    click_button 'Create Factuur'

    page.should have_text ontvanger
    page.should have_text 2100
  end
end