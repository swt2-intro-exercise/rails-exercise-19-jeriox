require 'rails_helper'

describe "Paper detail page", :type => :feature do
  it "should display the authors full name" do
    @paper = FactoryBot.create :paper
    visit paper_path(@paper)
    save_and_open_page
    expect(page).to have_text(@paper.authors.first.name)
  end
end