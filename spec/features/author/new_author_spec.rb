require 'rails_helper'

describe "New author page", type: :feature do

 it "should render withour error" do
   visit new_author_path
 end

 it "should have text inputs for an author's first name, last name, and homepage" do
   visit new_author_path

   # these are the standard names given to inputs by the form builder
   expect(page).to have_field('author[first_name]')
   expect(page).to have_field('author[last_name]')
   expect(page).to have_field('author[homepage]')
 end

  it "should validate the author" do
    @author = Author.new(first_name: "Alan", homepage: "https://example.com")
    expect(@author).to_not be_valid
  end
end