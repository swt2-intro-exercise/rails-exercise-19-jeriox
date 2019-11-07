require 'rails_helper'

describe "Paper overview page", :type => :feature do
  it "should filter by year" do
    @paper = FactoryBot.create :paper
    @paper2 = Paper.new(title: "go to statement considered harmful", venue:" communications of the acm", year: 1968)
    @paper2.save
    visit papers_path(year: 1950)
    expect(page).not_to have_text(@paper2.title)
  end
end
