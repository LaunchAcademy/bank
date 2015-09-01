require "date"
require "rspec"
require_relative "../../lib/transaction"

RSpec.describe Transaction do
  describe ".new" do
    it "creates a new Transaction object" do
      amount = -10.00
      date = Date.parse("2015/09/01")
      transaction = Transaction.new(amount, date)
      expect(transaction).to be_a(Transaction)
    end
  end

  let(:transaction) do
    amount = -20
    date = Date.parse("2015/09/01")
    Transaction.new(amount, date)
  end

  describe "#amount" do
    it "has a reader for amount" do
      expect(transaction.amount).to eq(-20)
    end

    it "does not have a writer for amount" do
      expect { transaction.amount = -500 }.
        to raise_error(NoMethodError)
    end
  end

  describe "#date" do
    before do
      # run code to set up test
    end

    it "has a reader for date" do
      expect(transaction.date).to eq(Date.parse("2015/09/01"))
    end

    it "does not have a writer for date" do
      expect { transaction.date = Date.parse("1999/01/01") }.
        to raise_error(NoMethodError)
    end
  end
end
