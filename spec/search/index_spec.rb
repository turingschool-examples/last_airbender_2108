require 'rails_helper'

 RSpec.describe 'index page' do
   describe 'search for an Avatar Nation' do
     it "can find an Avatar Nation and character count" do
       visit '/'

       fill_in :search, with: "Fire Nation"
       click_button 'Search'

       expect(page.status_code).to eq(200)
     end
   end
 end
