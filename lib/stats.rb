#!/usr/bin/env ruby
require_relative 'parser'
require_relative 'calculator'
require_relative 'sorter'
require_relative 'printer'

def start
  if ARGV.empty?
    puts 'enter name of log file'
  else
    begin
      if ARGV.first.match?(/.*\.log$/)
        parsed = Parser.new(ARGV.first).parse

        calculator = Calculator.new(parsed)
        views = calculator.calculate_views
        unique_views = calculator.calculate_unique_views

        views = Sorter.new(views).sort
        unique_views = Sorter.new(unique_views).sort

        Printer.new(views).print
        Printer.new(unique_views).print(:unique)
      else
        puts 'file format is incorrect'
      end
    rescue StandardError => e
      puts e.message
    end
  end
end

start
