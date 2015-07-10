class TestsController < ActionController::Base
	def create
		@test = test.new(user_params)
		respond_to do |format|
			@incident.save
		end
	end

	def user_params
		params.require(:@test).permit(:name, :age)
	end
end
