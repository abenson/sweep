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

		def scheduleAlive(ip)
			
		end

		def scheduleTcp(ip)

		end

		def scheduleUdp(ip)
		end

		def scheduleModule(ip, proto, port)
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
