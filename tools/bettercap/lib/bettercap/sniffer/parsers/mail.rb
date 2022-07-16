# encoding: UTF-8
=begin

BETTERCAP

  Author : ALIF FUSOBAR 'Red Hat Hacker' Indonesia
  Email  : ceo@redhathacker.id
  Blog   : http://redhathacker.id/

This project is released under the GPL 3 license.

=end

module BetterCap
module Parsers
# POP/IMAP authentication parser.
class Mail < Base
  def initialize
    @filters = [ /(\d+ )?(auth|authenticate) ([a-z\-_0-9]+)/i ]
    @name = 'MAIL'
  end
end
end
end
