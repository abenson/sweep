module Sweep

	class Module
		attr_accessor :timeout

		def self.FindModules(config)
			mod, args = config.value(:AliveModule).split(/:/)
			puts "Passing #{args} to #{mod}..."
		end

		class Persistent < Module

			class Alive < Persistent
				def execute(host)
					raise NotImplementedError
				end
			end

			class Port < Persistent
				attr_accessor :protocol
				def execute(host, port)
					raise NotImplementedError
				end
			end
		end

		class Single < Module
			def execute(host, port)
			end
		end
	end


end
