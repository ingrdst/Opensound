class TracksController < ApplicationController
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
        params.require(:track).permit(:title, :description)
    end

    def find_sound 
        @sound = Sound.find(params[:sound_id])
    end

    def find_track 
        @track = Track.find(params[:id])
    end
end

