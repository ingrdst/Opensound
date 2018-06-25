class SoundsController < ApplicationController
	before_action :find_sound, only: [:show, :dashboard]

	def index
		@sounds = Sound.all.order("created_at DESC")
	end

    def show
	end


	private 

	def find_sound
		@sound = Sound.find(params[:id])
	end

end