class GamePlaysController < ApplicationController
  # GET /game_plays
  # GET /game_plays.json
  def index
    @game_plays = GamePlay.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_plays }
    end
  end

  # GET /game_plays/1
  # GET /game_plays/1.json
  def show
    @game_play = GamePlay.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game_play }
    end
  end

  # GET /game_plays/new
  # GET /game_plays/new.json
  def new
    @game_play = GamePlay.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @game_play }
    end
  end

  # GET /game_plays/1/edit
  def edit
    @game_play = GamePlay.find(params[:id])
  end

  # POST /game_plays
  # POST /game_plays.json
  def create
    @game_play = GamePlay.new(params[:game_play])

    respond_to do |format|
      if @game_play.save
        format.html { redirect_to @game_play, notice: 'Game play was successfully created.' }
        format.json { render json: @game_play, status: :created, location: @game_play }
      else
        format.html { render action: "new" }
        format.json { render json: @game_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /game_plays/1
  # PUT /game_plays/1.json
  def update
    @game_play = GamePlay.find(params[:id])

    respond_to do |format|
      if @game_play.update_attributes(params[:game_play])
        format.html { redirect_to @game_play, notice: 'Game play was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game_play.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_plays/1
  # DELETE /game_plays/1.json
  def destroy
    @game_play = GamePlay.find(params[:id])
    @game_play.destroy

    respond_to do |format|
      format.html { redirect_to game_plays_url }
      format.json { head :no_content }
    end
  end
end
