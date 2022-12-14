# location: spec/feature/integraton_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a member', type:feature do
    scenario 'valid inputs' do
        visit 'members/new'
        fill_in 'member_name', with: 'Test'
        fill_in 'member_email', with: 'Test@mail.com'
        fill_in 'member_points', with: '1'
        fill_in 'member_degree', with:'TEST'
        fill_in 'member_division', with:'TEST'
        click_on 'Create Member'
        visit 'members'
        expect(page).to have_content('Test')
    end
end
        