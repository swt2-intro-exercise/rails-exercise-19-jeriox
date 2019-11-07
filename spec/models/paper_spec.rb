require 'rails_helper'

describe "Paper model", :type => :model do
  it "should have empty author list" do
    @paper = Paper.new({title: "bla", venue: "blubb", year: 1942})
    expect(@paper.authors).to be_empty
  end
end
