
module Sweep
	APP_NAME = 'sweep'
	VERSION = '0.0.0'
	COPYRIGHT = "© 2013"
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

