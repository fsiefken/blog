require 'rails_helper'

RSpec.describe "authors/edit", :type => :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :last_name => "MyString",
      :first_name => "MyString"
    ))
  end

  it "renders the edit author form" do
    render

    assert_select "form[action=?][method=?]", author_path(@author), "post" do

      assert_select "input#author_last_name[name=?]", "author[last_name]"

      assert_select "input#author_first_name[name=?]", "author[first_name]"
    end
  end
end
