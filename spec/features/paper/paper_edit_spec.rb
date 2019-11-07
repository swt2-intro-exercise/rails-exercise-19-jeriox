require 'rails_helper'

describe "Paper edit page", :type => :feature do
  it "should display author select box" do
    @paper = FactoryBot.create :paper
    visit edit_paper_path(@paper)
    expect(page).to have_select multiple: true
  end
end
