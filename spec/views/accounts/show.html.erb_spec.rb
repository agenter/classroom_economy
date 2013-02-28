require 'spec_helper'

describe "accounts/show" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :user => "",
      :group => "",
      :amount => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1.5/)
  end
end
