require 'bundler/setup'
require 'firmata'

board = Firmata::Board.new('/dev/tty.usbmodem1421')

board.connect

pin_number = 13
rate = 0.5

10.times do
  board.digital_write pin_number, Firmata::Board::HIGH
  puts '+'
  board.delay rate

  board.digital_write pin_number, Firmata::Board::LOW
  puts '-'
  board.delay rate
end