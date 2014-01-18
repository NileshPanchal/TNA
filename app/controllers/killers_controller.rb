class KillersController < ApplicationController
  # GET /killers
  # GET /killers.json
  def index
    @killers = Killer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @killers }
    end
  end

  # GET /killers/1
  # GET /killers/1.json
  def show
    @killer = Killer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @killer }
    end
  end

  # GET /killers/new
  # GET /killers/new.json
  def new
    @killer = Killer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @killer }
    end
  end

  # GET /killers/1/edit
  def edit
    @killer = Killer.find(params[:id])
  end

  # POST /killers
  # POST /killers.json
  def create
    @killer = Killer.new(params[:killer])

    respond_to do |format|
      if @killer.save
        format.html { redirect_to @killer, notice: 'Killer was successfully created.' }
        format.json { render json: @killer, status: :created, location: @killer }
      else
        format.html { render action: "new" }
        format.json { render json: @killer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /killers/1
  # PUT /killers/1.json
  def update
    @killer = Killer.find(params[:id])

    respond_to do |format|
      if @killer.update_attributes(params[:killer])
        format.html { redirect_to @killer, notice: 'Killer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @killer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /killers/1
  # DELETE /killers/1.json
  def destroy
    @killer = Killer.find(params[:id])
    @killer.destroy

    respond_to do |format|
      format.html { redirect_to killers_url }
      format.json { head :no_content }
    end
  end
end
