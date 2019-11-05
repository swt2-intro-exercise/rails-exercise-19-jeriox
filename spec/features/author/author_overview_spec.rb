require 'rails_helper'

describe "Author overview page", :type => :feature do
  it "should display author overview" do
    FactoryBot.create :author
    @alan = Author.find_by(first_name: "Alan")
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end
end

