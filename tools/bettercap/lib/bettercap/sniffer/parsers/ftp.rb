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
# FTP authentication parser.
class Ftp < Base
  def initialize
    @filters = [ /(USER|PASS)\s+.+/ ]
    @name = 'FTP'
  end
end
end
end
