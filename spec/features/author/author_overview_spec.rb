require 'rails_helper'

describe "Author overview page", :type => :feature do
  it "should display author overview" do
    FactoryBot.create :author
    @alan = Author.find_by(first_name: "Alan")
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end

  it "should display edit link", :type => :feature do
    @alan = FactoryBot.create :author
    visit authors_path
    expect(page).to have_link "Edit", href: edit_author_path(@alan)
  end

  it "should display delete link", :type => :feature do
    @alan = FactoryBot.create :author
    visit authors_path
    expect(page).to have_link "Delete", href: author_path(@alan)
  end
end

