
module Sweep
	APP_NAME = 'sweep'
	VERSION = '0.0.0'
	COPYRIGHT = "(C) Andrew Benson and contributors 2013"
	Config = { 
		:HostInterval => 10, 
		:PortInterval => 5,
		:AliveScanners => 10,
		:TCPScanners => 10,
		:UDPScanners => 5,	
		:AliveModule => 'AliveICMP',
		:TCPModule => 'TCPSyn',
		:UDPModule => 'UDPCheck'
	}
end

require 'rubygems'
require 'active_record'
require 'racket'

require 'sweep/scheduler'
require 'sweep/task'
require 'sweep/module'

