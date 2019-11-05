require 'rails_helper'

describe "Author model", :type => :model do
  it "should create a new author" do
    author = Author.new({first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing"})
    expect(author.first_name).to eq("Alan")
    expect(author.last_name).to eq("Turing")
    expect(author.homepage).to eq("http://wikipedia.org/Alan_Turing")
    expect(author.name).to eq("Alan Turing")
  end

  it "should save a new author", :type => :feature do
    visit new_author_path
    page.fill_in 'author[first_name]', with: 'Alan'
    page.fill_in 'author[last_name]', with: 'Turing'
    page.fill_in 'author[homepage]', with: 'http://wikipedia.org/Alan_Turing'
    find('input[type="submit"]').click
    expect(Author.find_by(last_name: "Turing")).not_to be_nil
  end
end