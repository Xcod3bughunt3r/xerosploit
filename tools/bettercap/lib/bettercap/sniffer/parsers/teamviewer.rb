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
# MySQL authentication parser.
class TeamViewer < Base
  def on_packet( pkt )
    begin
      if pkt.tcp_dst == 5938 or pkt.tcp_src == 5938
        packet = Network::Protos::TeamViewer::Packet.parse( pkt.payload )
        unless packet.nil?
          StreamLogger.log_raw( pkt, 'TEAMVIEWER', "#{'version'.blue}=#{packet.version.yellow} #{'command'.blue}=#{packet.command.yellow}"  )
        end
      end
    rescue; end
  end
end
end
end
