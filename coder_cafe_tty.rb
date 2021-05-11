require 'pry'
require "tty-prompt"

prompt = TTY::Prompt.new

answer = prompt.select("What would you like?", %w(Mocha BlackTea))


puts answer