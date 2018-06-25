class SoundsController < ApplicationController
	before_action :find_sound, only: [:show, :dashboard]
	before_action :find_track, only: [:show, :dashboard]

	def index
		@sounds = Sound.all.order("created_at DESC")
	end

	def show
	end

	def dashboard
	end

	private

	def find_track
		@tracks = Track.where(sound_id: @sound).order("created_at DESC")
	end

	def find_sound
		if params[:id].nil?
			@sound = current_sound
		else
			@sound = Sound.find(params[:id])
		end
	end
end