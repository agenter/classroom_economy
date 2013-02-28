require 'spec_helper'

describe "accounts/new" do
  before(:each) do
    assign(:account, stub_model(Account,
      :user => "",
      :group => "",
      :amount => 1.5
    ).as_new_record)
  end

  it "renders new account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path, :method => "post" do
      assert_select "input#account_user", :name => "account[user]"
      assert_select "input#account_group", :name => "account[group]"
      assert_select "input#account_amount", :name => "account[amount]"
    end
  end
end
