require 'rails_helper'

describe "Author edit page", type: :feature do
  it "should render" do
    FactoryBot.create :author
    @alan = Author.find_by(first_name: "Alan")
    visit edit_author_path(@alan)
  end
end