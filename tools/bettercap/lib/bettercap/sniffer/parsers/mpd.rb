=begin

BETTERCAP

  Author : ALIF FUSOBAR 'Red Hat Hacker' Indonesia
  Email  : ceo@redhathacker.id
  Blog   : http://redhathacker.id/

This project is released under the GPL 3 license.

=end

module BetterCap
module Parsers
# Music Player Daemon (MPD) authentication parser.
class Mpd < Base
  def initialize
    @name = 'MPD'
  end
  def on_packet( pkt )
    begin
      if pkt.tcp_dst == 6600
        lines = pkt.to_s.split(/\r?\n/)
        lines.each do |line|
          if line =~ /password\s+(.+)$/
            pass = $1
            StreamLogger.log_raw( pkt, @name, "password=#{pass}" )
          end
        end
      end
    rescue
    end
  end
end
end
end
