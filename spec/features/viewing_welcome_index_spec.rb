require 'spec_helper'

feature 'Visitor views the static content' do
  before(:each) do
    visit root_path
  end

  scenario 'views root path', js: true do
    expect(page).to have_content('H1 Title')
  end
end
