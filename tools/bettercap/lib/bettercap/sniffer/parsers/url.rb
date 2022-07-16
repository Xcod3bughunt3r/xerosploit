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
# HTTP GET requests parser.
#class Url < Base
#  def on_packet( pkt )
#    s = pkt.to_s
#    if s =~ /GET\s+([^\s]+)\s+HTTP.+Host:\s+([^\s]+).+/m
#      host = $2
#      url = $1
#      unless url =~ /.+\.(png|jpg|jpeg|bmp|gif|img|ttf|woff|css|js).*/i
#        StreamLogger.log_raw( pkt, 'GET', "http://#{host}#{url}" )
#      end
#    end
#  end
#end
end
end
