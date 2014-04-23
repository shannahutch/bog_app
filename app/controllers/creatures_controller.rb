class CreaturesController < ApplicationController

	def index
		@creatures = Creature.all
		render :index
	end

	def new
		render :new
	end

	def create
		creature = params.require(:creatures).permit(:name, :kind, :description)
		Creature.create(creature)
		redirect_to "/creatures"
	end

	def update
		creature_id = params[:id}
			creature = Creature.find(creature_id)
			updates_attributes = params.require(:creature).permit(:name, :kind, :description)
			Creature.update(creature, updates_attributes)
			redirect_to"/bogs/#{creature_id}"
		end
end