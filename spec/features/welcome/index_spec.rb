require 'rails_helper'

RSpec.describe 'welcome page (index)' do
  describe 'as a user' do
    context 'when i visit "/"' do
      before { visit root_path }

      context 'and i select fire nation from the select field' do
        before do
          select 'Fire Nation', from: :nation
          click_button 'Search For Members'
        end

        it 'i should be on the page "/search"', :vcr do
          expect(current_path).to eq(search_path)
        end

        it 'i should see total number of people who live in the fire nation', :vcr do
          within '#member-count' do
            expect(page).to have_content("Fire Nation has 97 members")
          end
        end

        it 'i should see a list with details for first 25 members', :vcr do
          fire_nation_members = AirbenderFacade.nation_members('fire_nation')

          fire_nation_members[0..24].each do |member|
            within "#member-#{member.id}" do
              expect(page).to have_content(member.name)

              unless member.photo_url.nil?
                expect(page).to have_css("photo-#{member.id}")
              end

              if member.allies.empty?
                expect(page).to have_content('None')
              else
                expect(page).to have_content(member.allies.join(', ').strip)
              end

              if member.enemies.empty?
                expect(page).to have_content('None')
              else
                expect(page).to have_content(member.enemies.join(', ').strip)
              end

              expect(page).to have_content(member.affiliation)

            end
          end
        end
      end
    end
  end
end
