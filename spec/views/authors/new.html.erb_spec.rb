require 'rails_helper'

RSpec.describe "authors/new", :type => :view do
  before(:each) do
    assign(:author, Author.new(
      :last_name => "MyString",
      :first_name => "MyString"
    ))
  end

  it "renders new author form" do
    render

    assert_select "form[action=?][method=?]", authors_path, "post" do

      assert_select "input#author_last_name[name=?]", "author[last_name]"

      assert_select "input#author_first_name[name=?]", "author[first_name]"
    end
  end
end
