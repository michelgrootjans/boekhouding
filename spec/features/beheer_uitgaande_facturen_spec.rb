require 'spec_helper'

feature 'Beheer uitgaande fakturen:' do
  scenario 'Maak een nieuwe factuur aan' do
    visit '/uitgaande_facturen'
    click_link 'Nieuwe factuur ...'

    fill_in 'Ontvanger', with: 'M2Q'
    fill_in 'Bedrag',    with: 1000
    click_button 'Creer factuur'

    page.should have_text 'M2Q'
    page.should have_text '1000'
  end
end