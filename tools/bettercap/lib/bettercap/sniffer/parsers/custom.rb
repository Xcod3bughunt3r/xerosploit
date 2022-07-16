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
# Parser used when the "--custom-parser EXPRESSION" command line
# argument is specified.
class Custom < Base
  # Initialize the parser given the +filter+ Regexp object.
  def initialize( filter )
    @filters = [ filter ]
    @name    = 'DATA'
  end
end
end
end
