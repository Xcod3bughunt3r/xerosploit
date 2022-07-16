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
# IRC protocol parser.
class Irc < Base
  def initialize
    @filters = [ /NICK\s+.+/, /NS IDENTIFY\s+.+/, /nickserv :identify\s+.+/ ]
    @name = 'IRC'
  end
end
end
end
