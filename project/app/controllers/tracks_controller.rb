class TracksController < ApplicationController
    before_action :authenticate_sound!, except: [:show]
    before_action :find_sound
    before_action :find_track, only: [:show, :edit, :update, :destroy]
    
    def new
        @track = @sound.tracks.new
    end

    def create 
        @track = @sound.tracks.new track_params
        if @track.save 
            redirect_to sound_track_path(@sound, @track) 
        else
            render 'new'
        end 
    end

    def show
        @tracks = Track.where(sound_id: @sound).order("created_at DESC").reject { |e| e.id == @track.id }
    end

    def edit
    end
    
    def update
        if @track.update track_params
            redirect_to sound_track_path(@sound, @track, notice: "Track was successfuly updated!")
        else
            render 'edit'
        end
    end

    def destroy
		@track.destroy
        redirect_to sounds_path
	end

    private 

    def track_params
        params.require(:track).permit(:title, :description, :track_thumbnail)
    end

    def find_sound 
        @sound = Sound.find(params[:sound_id])
    end

    def find_track 
        @track = Track.find(params[:id])
    end

    def require_permission
        @sound = Sound.find(params[:sound_id])
        if current_sound != @sound
            redirect_to root_path, notice: "Sorry, you're not allowed to visite this page!"
        end
    end

    def index
        @tracks = Tracks.all
        if params[:search]
          @tracks = Tracks.search(params[:search]).order("created_at DESC")
        else
          @tracks = Tracks.all.order("created_at DESC")
        end
      end

end

