require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @register = CashRegister.new(100)
  end

  def test_accept_money
    transaction = Transaction.new(0)
    transaction.amount_paid = 10
    @register.accept_money(transaction)
    assert_equal(110, @register.total_money)
  end

  def test_change
    transaction = Transaction.new(5)
    transaction.amount_paid = 10
    assert_equal(5, @register.change(transaction))
  end

  def test_give_receipt
    transaction = Transaction.new(10)
    assert_output("You've paid $10.\n") { @register.give_receipt(transaction) }
  end
end

class TransactionTest < Minitest::Test
  def setup
    @transaction = Transaction.new(10)
  end

  def test_prompt_for_payment
    input = StringIO.new('5\n')
    @transaction.prompt_for_payment(input: input)
    assert_equal(5, @transaction.amount_paid)
  end
end