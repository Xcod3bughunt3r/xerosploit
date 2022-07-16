# encoding: UTF-8
=begin

BETTERCAP

  Author : ALIF FUSOBAR 'Red Hat Hacker' Indonesia
  Email  : ceo@redhathacker.id
  Blog   : http://redhathacker.id/

This project is released under the GPL 3 license.

=end

module BetterCap
# Simple base class for modules and plugins of various types.
class Pluggable
  @@metadata = {
    'Name'        => '',
    'Version'     => '',
    'Author'      => "Simone 'evilsocket' Margaritelli",
    'License'     => 'GPL3',
    'Description' => ''
  }

  # Define the metadata for this module.
  def self.meta(meta = {})
    meta.each do |key,value|
      @@metadata[key] = value
    end
  end

  # Get the metadata of this module.
  def self.metadata
    @@metadata
  end
end
end
