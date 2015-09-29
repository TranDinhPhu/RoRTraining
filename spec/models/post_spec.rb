require 'rails_helper'

describe Post do
  it "has a valid name length" do
    Post.create(name: "aaa").should be_valid
    Post.create(name: "aa").should_not be_valid
  end
end
