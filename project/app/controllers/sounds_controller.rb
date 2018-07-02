class SoundsController < ApplicationController
	before_action :find_sound, only: [:show, :dashboard]
	before_action :find_track, only: [:show, :dashboard]

	def index
		@sounds = Sound.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 1)
	end

	def show
	end

	def dashboard
	end

	private

	def find_track
		@tracks = Track.where(sound_id: @sound).order("created_at DESC").paginate(:page => params[:page], :per_page => 2)
	end

	def find_sound
		if params[:id].nil?
			@sound = current_sound
		else
			@sound = Sound.find(params[:id])
		end
	end
end