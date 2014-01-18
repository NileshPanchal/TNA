class PplInvolvedsController < ApplicationController
  # GET /ppl_involveds
  # GET /ppl_involveds.json
  def index
    @ppl_involveds = PplInvolved.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ppl_involveds }
    end
  end

  # GET /ppl_involveds/1
  # GET /ppl_involveds/1.json
  def show
    @ppl_involved = PplInvolved.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ppl_involved }
    end
  end

  # GET /ppl_involveds/new
  # GET /ppl_involveds/new.json
  def new
    @ppl_involved = PplInvolved.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ppl_involved }
    end
  end

  # GET /ppl_involveds/1/edit
  def edit
    @ppl_involved = PplInvolved.find(params[:id])
  end

  # POST /ppl_involveds
  # POST /ppl_involveds.json
  def create
    @ppl_involved = PplInvolved.new(params[:ppl_involved])

    respond_to do |format|
      if @ppl_involved.save
        format.html { redirect_to @ppl_involved, notice: 'Ppl involved was successfully created.' }
        format.json { render json: @ppl_involved, status: :created, location: @ppl_involved }
      else
        format.html { render action: "new" }
        format.json { render json: @ppl_involved.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ppl_involveds/1
  # PUT /ppl_involveds/1.json
  def update
    @ppl_involved = PplInvolved.find(params[:id])

    respond_to do |format|
      if @ppl_involved.update_attributes(params[:ppl_involved])
        format.html { redirect_to @ppl_involved, notice: 'Ppl involved was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ppl_involved.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ppl_involveds/1
  # DELETE /ppl_involveds/1.json
  def destroy
    @ppl_involved = PplInvolved.find(params[:id])
    @ppl_involved.destroy

    respond_to do |format|
      format.html { redirect_to ppl_involveds_url }
      format.json { head :no_content }
    end
  end
end
