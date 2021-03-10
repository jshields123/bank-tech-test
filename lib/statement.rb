# frozen_string_literal: true

class Statement

  def print_statement(transactions)
    p transactions
    print_headings
    transactions.each do |t|
      print "#{t[0]} || #{t[1]} || #{t[2]}\n"
    end
  end

    def print_headings
      print "date || credit || debit || balance\n"
    end
  end
