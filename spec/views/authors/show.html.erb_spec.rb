require 'rails_helper'

RSpec.describe "authors/show", :type => :view do
  before(:each) do
    @author = assign(:author, Author.create!(
      :last_name => "Last Name",
      :first_name => "First Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/First Name/)
  end
end
