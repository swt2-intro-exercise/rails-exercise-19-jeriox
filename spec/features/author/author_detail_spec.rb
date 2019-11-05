require 'rails_helper'

describe "Author detail page", :type => :feature do
  it "should display author details" do
    FactoryBot.create :author
    @alan = Author.find_by(first_name: "Alan")
    visit author_path(@alan)
    expect(page).to have_text("Turing")
  end
end
