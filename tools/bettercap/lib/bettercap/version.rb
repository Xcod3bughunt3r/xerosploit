# encoding: UTF-8
=begin

BETTERCAP

  Author : ALIF FUSOBAR 'Red Hat Hacker' Indonesia
  Email  : ceo@redhathacker.id
  Blog   : http://redhathacker.id/

This project is released under the GPL 3 license.

=end
module BetterCap
  # Current version of bettercap.
  VERSION = '1.5.7xerob'
  # Program banner.
  BANNER = File.read( File.dirname(__FILE__) + '/banner' ).gsub( '#VERSION#', "v#{VERSION}")
end
