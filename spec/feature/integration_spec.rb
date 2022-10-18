# location: spec/feature/integraton_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a member', type:feature do
    scenario 'valid inputs - name' do
        visit 'members/new'
        fill_in 'member_Mem_id', with: '1'
        check 'member_Mem_isActive'
        fill_in 'member_Mem_name', with: 'Test'
        fill_in 'member_Mem_email', with: 'Test@mail.com'
        fill_in 'member_Mem_Points', with: '1'
        fill_in 'member_Mem_Dept', with:'TEST'
        click_on 'Create Member'
        visit 'members'
        expect(page).to have_content('Test')
    end

    scenario 'valid input - isactive ' do
        visit 'members/new'
        fill_in 'member_Mem_id', with: '1'
        check 'member_Mem_isActive'
        fill_in 'member_Mem_name', with: 'Test'
        fill_in 'member_Mem_email', with: 'Test@mail.com'
        fill_in 'member_Mem_Points', with: '1'
        fill_in 'member_Mem_Dept', with:'TEST'
        click_on 'Create Member'
        expect(page).to have_content('true')
    end

    scenario 'valid input - id ' do
        visit 'members/new'
        fill_in 'member_Mem_id', with: '1'
        check 'member_Mem_isActive'
        fill_in 'member_Mem_name', with: 'Test'
        fill_in 'member_Mem_email', with: 'Test@mail.com'
        fill_in 'member_Mem_Points', with: '1'
        fill_in 'member_Mem_Dept', with:'TEST'
        click_on 'Create Member'
        expect(page).to have_content('1')
    end

    scenario 'valid input - email ' do
        visit 'members/new'
        fill_in 'member_Mem_id', with: '1'
        check 'member_Mem_isActive'
        fill_in 'member_Mem_name', with: 'Test'
        fill_in 'member_Mem_email', with: 'Test@mail.com'
        fill_in 'member_Mem_Points', with: '1'
        fill_in 'member_Mem_Dept', with:'TEST'
        click_on 'Create Member'
        expect(page).to have_content('Test@mail.com')
    end

    scenario 'valid input - DEPT ' do
        visit 'members/new'
        fill_in 'member_Mem_id', with: '1'
        check 'member_Mem_isActive'
        fill_in 'member_Mem_name', with: 'Test'
        fill_in 'member_Mem_email', with: 'Test@mail.com'
        fill_in 'member_Mem_Points', with: '1'
        fill_in 'member_Mem_Dept', with:'TEST'
        click_on 'Create Member'
        expect(page).to have_content('TEST')
    end

    scenario 'valid input - point ' do
        visit 'members/new'
        fill_in 'member_Mem_id', with: '1'
        check 'member_Mem_isActive'
        fill_in 'member_Mem_name', with: 'Test'
        fill_in 'member_Mem_email', with: 'Test@mail.com'
        fill_in 'member_Mem_Points', with: '2'
        fill_in 'member_Mem_Dept', with:'TEST'
        click_on 'Create Member'
        expect(page).to have_content('2')
    end
end
        