class OrgansController < ApplicationController
  # GET /organs
  # GET /organs.json
  def index
    @organs = Organ.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @organs }
    end
  end

  # GET /organs/1
  # GET /organs/1.json
  def show
    @organ = Organ.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @organ }
    end
  end

  # GET /organs/new
  # GET /organs/new.json
  def new
    @organ = Organ.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @organ }
    end
  end

  # GET /organs/1/edit
  def edit
    @organ = Organ.find(params[:id])
  end

  # POST /organs
  # POST /organs.json
  def create
    @organ = Organ.new(params[:organ])

    respond_to do |format|
      if @organ.save
        format.html { redirect_to @organ, notice: 'Organ was successfully created.' }
        format.json { render json: @organ, status: :created, location: @organ }
      else
        format.html { render action: "new" }
        format.json { render json: @organ.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /organs/1
  # PUT /organs/1.json
  def update
    @organ = Organ.find(params[:id])

    respond_to do |format|
      if @organ.update_attributes(params[:organ])
        format.html { redirect_to @organ, notice: 'Organ was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @organ.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organs/1
  # DELETE /organs/1.json
  def destroy
    @organ = Organ.find(params[:id])
    @organ.destroy

    respond_to do |format|
      format.html { redirect_to organs_url }
      format.json { head :no_content }
    end
  end
end
