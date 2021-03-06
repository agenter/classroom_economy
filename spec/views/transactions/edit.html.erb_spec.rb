require 'spec_helper'

describe "transactions/edit" do
  before(:each) do
    @transaction = assign(:transaction, stub_model(Transaction,
      :from_account => "",
      :to_account => "",
      :amount => 1.5
    ))
  end

  it "renders the edit transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => transactions_path(@transaction), :method => "post" do
      assert_select "input#transaction_from_account", :name => "transaction[from_account]"
      assert_select "input#transaction_to_account", :name => "transaction[to_account]"
      assert_select "input#transaction_amount", :name => "transaction[amount]"
    end
  end
end
