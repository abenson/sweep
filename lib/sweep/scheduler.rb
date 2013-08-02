module Sweep
	class Scheduler
		def initialize(config)
			@tasks = []
			@semaphore = Mutex.new
			@config = config
		end

		def taskCount
			@tasks.size
		end

		def scheduleAlive(host)
			
		end

		def scheduleTcp(host)

		end

		def scheduleUdp(host)
		end

		def scheduleCheck(host, proto, port)
			add( { :host => host, :proto => proto, :port => port } )
		end

		def seed(ips)
			ips.each do |ip|
				scheduleAlive(ip)
			end
		end

		def add(task)
			@semaphore.synchronize do
				@tasks << { :task => task, :time => Time.now }
			end
		end

		def fetch
			@semaphore.synchronize do
				while Time.now - @tasks.first[:time] < 10
					sleep(5)
				end
				tasks.shift
			end
		end

	end
end
