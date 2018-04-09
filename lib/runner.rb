#print a table to the terminal with the count, date of earliest violation,
# and date of latest violation for each violation type.
require './lib/violation.rb'

class Violations
  attr_reader :violations

  def initialize
    @violations = []
  end

  def load
    CSV.foreach('./data/Violations-2012.csv', headers: true, header_converters: :symbol) do |row|
      @violations << Violation.new(row[:id], row[:inspection_id], row[:category], row[:date], row[:date_closed], row[:type])
    end
  end

  def make_table
    puts "Count | #{@violations.count}"
  end

end
