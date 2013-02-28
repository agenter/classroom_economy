require 'spec_helper'

describe "accounts/edit" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :user => "",
      :group => "",
      :amount => 1.5
    ))
  end

  it "renders the edit account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path(@account), :method => "post" do
      assert_select "input#account_user", :name => "account[user]"
      assert_select "input#account_group", :name => "account[group]"
      assert_select "input#account_amount", :name => "account[amount]"
    end
  end
end
