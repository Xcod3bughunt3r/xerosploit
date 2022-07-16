# encoding: UTF-8
=begin

BETTERCAP

Author : ALIF FUSOBAR 'Red Hat Hacker' Indonesia
Email  : ceo@redhathacker.id
Blog   : http://redhathacker.id/

This project is released under the GPL 3 license.

=end

# Monkey patching fix for https://github.com/evilsocket/bettercap/issues/154
module Celluloid
  module IO
    class UDPSocket
      def initialize(address_family = ::Socket::AF_INET)
        @socket = ::UDPSocket.new(address_family)
      rescue Errno::EMFILE
        sleep 0.5
        retry
      end
    end
  end
end
