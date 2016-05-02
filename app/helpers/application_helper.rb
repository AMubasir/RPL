module ApplicationHelper
	def status_converter(status, thruty: 'Ada', falsey: 'Disewa')
		if status
			thruty
		else
			falsey
		end
	end
end
