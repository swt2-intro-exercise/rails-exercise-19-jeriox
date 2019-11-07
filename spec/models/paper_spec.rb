require 'rails_helper'

describe "Paper model", :type => :model do
  @paper = Paper.new({title: "bla", venue: "blubb", year: 1942})
  expect(@paper.authors).to be_empty
end
