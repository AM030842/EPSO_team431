# location: spec/feature/integraton_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a member', type:feature do
    scenario 'valid inputs' do
        visit 'members/new'
        fill_in 'member_Mem_id', with: 1
        check 'member_Mem_isActive'
        fill_in 'member_Mem_name', with: 'Test'
        fill_in 'member_Mem_email', with: 'Test@mail.com'
        fill_in 'member_Mem_points', with: 1
        fill_in 'member_Mem_Dept', with:'TEST'
        click_on 'Create Member'
        visit 'members'
        expect(page).to have_content('Test')
    end
end
        