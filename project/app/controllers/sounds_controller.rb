class SoundsController < ApplicationController
	before_action :find_sound, only: [:show, :dashboard]
	before_action :find_episode, only: [:show, :dashboard]

	def index
		@sounds = Sound.all.order("created_at DESC")
	end

    def show
        @sound = Sound.find(params[:id])
	end

end