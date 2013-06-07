module Sweep
	class Config
	
		def initialize	
			@config = { 
				:HostInterval => 10, 
				:PortInterval => 5,
				:AliveScanners => 10,
				:TCPScanners => 10,
				:UDPScanners => 5,	
				:AliveModule => 'AliveICMP',
				:TCPModule => 'TCPSyn',
				:UDPModule => 'UDPCheck',
				:Modules => []
			}
		end

		def value(key)
			@config[key]
		end

		def setValue(key, value)
			@config[key] = value
		end

		def config
			@config
		end

		def validConfig?(config)
			missing = @config.keys - config.config.keys
			if missing.size > 0 then
				raise "Missing the following required settings: #{missing.join(", ")}."
			end
		end

		def setConfig(config)
			if validConfig?(config) then
				@config = Hash.new(config)
			end
		end
	end
end 
