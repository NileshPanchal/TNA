class CrimeScenesController < ApplicationController
  # GET /crime_scenes
  # GET /crime_scenes.json
  def index
    @crime_scenes = CrimeScene.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crime_scenes }
    end
  end

  # GET /crime_scenes/1
  # GET /crime_scenes/1.json
  def show
    @crime_scene = CrimeScene.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crime_scene }
    end
  end

  # GET /crime_scenes/new
  # GET /crime_scenes/new.json
  def new
    @crime_scene = CrimeScene.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crime_scene }
    end
  end

  # GET /crime_scenes/1/edit
  def edit
    @crime_scene = CrimeScene.find(params[:id])
  end

  # POST /crime_scenes
  # POST /crime_scenes.json
  def create
    @crime_scene = CrimeScene.new(params[:crime_scene])

    respond_to do |format|
      if @crime_scene.save
        format.html { redirect_to @crime_scene, notice: 'Crime scene was successfully created.' }
        format.json { render json: @crime_scene, status: :created, location: @crime_scene }
      else
        format.html { render action: "new" }
        format.json { render json: @crime_scene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crime_scenes/1
  # PUT /crime_scenes/1.json
  def update
    @crime_scene = CrimeScene.find(params[:id])

    respond_to do |format|
      if @crime_scene.update_attributes(params[:crime_scene])
        format.html { redirect_to @crime_scene, notice: 'Crime scene was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crime_scene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crime_scenes/1
  # DELETE /crime_scenes/1.json
  def destroy
    @crime_scene = CrimeScene.find(params[:id])
    @crime_scene.destroy

    respond_to do |format|
      format.html { redirect_to crime_scenes_url }
      format.json { head :no_content }
    end
  end
end
