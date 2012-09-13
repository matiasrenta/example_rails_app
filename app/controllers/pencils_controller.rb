class PencilsController < ApplicationController
  # GET /pencils
  # GET /pencils.json
  def index
    @pencils = Pencil.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pencils }
    end
  end

  # GET /pencils/1
  # GET /pencils/1.json
  def show
    @pencil = Pencil.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pencil }
    end
  end

  # GET /pencils/new
  # GET /pencils/new.json
  def new
    @pencil = Pencil.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pencil }
    end
  end

  # GET /pencils/1/edit
  def edit
    @pencil = Pencil.find(params[:id])
  end

  # POST /pencils
  # POST /pencils.json
  def create
    @pencil = Pencil.new(params[:pencil])

    respond_to do |format|
      if @pencil.save
        format.html { redirect_to @pencil, notice: 'Pencil was successfully created.' }
        format.json { render json: @pencil, status: :created, location: @pencil }
      else
        format.html { render action: "new" }
        format.json { render json: @pencil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pencils/1
  # PUT /pencils/1.json
  def update
    @pencil = Pencil.find(params[:id])

    respond_to do |format|
      if @pencil.update_attributes(params[:pencil])
        format.html { redirect_to @pencil, notice: 'Pencil was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pencil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pencils/1
  # DELETE /pencils/1.json
  def destroy
    @pencil = Pencil.find(params[:id])
    @pencil.destroy

    respond_to do |format|
      format.html { redirect_to pencils_url }
      format.json { head :no_content }
    end
  end
end
