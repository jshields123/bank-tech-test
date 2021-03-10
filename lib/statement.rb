# frozen_string_literal: true

class Statement
  def print_statement(transactions)
    print_headings
    transactions.each do |t|
      print "#{t.date} || #{t.credit} || #{t.debit} || #{t.balance}\n "
    end
  end

  def print_headings
    print "date || credit || debit || balance\n "
  end
end
