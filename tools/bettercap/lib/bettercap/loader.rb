# encoding: UTF-8
=begin

BETTERCAP

  Author : ALIF FUSOBAR 'Red Hat Hacker' Indonesia
  Email  : ceo@redhathacker.id
  Blog   : http://redhathacker.id/

This project is released under the GPL 3 license.

=end

module BetterCap
# This class is responsible for dynamically loading modules.
class Loader
  # Dynamically load a class given its +name+.
  # @see https://github.com/evilsocket/bettercap/issues/88
  def self.load(name)
    root = Kernel
    name.split('::').each do |part|
      root = root.const_get(part)
    end
    root
  end
end
end
