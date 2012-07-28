class DinosController < ApplicationController
  # GET /dinos
  # GET /dinos.json
  def index
    @dinos = Dino.original.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dinos }
    end
  end

  # GET /dinos/1
  # GET /dinos/1.json
  def show
    @dino = Dino.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dino }
    end
  end

  # GET /dinos/new
  # GET /dinos/new.json
  def new
    @dino = Dino.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dino }
    end
  end

  # GET /dinos/1/edit
  def edit
    @dino = Dino.find(params[:id])
  end

  # POST /dinos
  # POST /dinos.json
  def create
    @dino = Dino.new(params[:dino])

    respond_to do |format|
      if @dino.save
        format.html { redirect_to @dino, notice: 'Dino was successfully created.' }
        format.json { render json: @dino, status: :created, location: @dino }
      else
        format.html { render action: "new" }
        format.json { render json: @dino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dinos/1
  # PUT /dinos/1.json
  def update
    @dino = Dino.find(params[:id])

    respond_to do |format|
      if @dino.update_attributes(params[:dino])
        format.html { redirect_to @dino, notice: 'Dino was successfully updated.' }
        format.json { head :no_content }
        format.js   { }
      else
        format.html { render action: "edit" }
        format.json { render json: @dino.errors, status: :unprocessable_entity }
        format.js   { }
      end
    end
  end

  # DELETE /dinos/1
  # DELETE /dinos/1.json
  def destroy
    @dino = Dino.find(params[:id])
    @dino.destroy

    respond_to do |format|
      format.html { redirect_to dinos_url }
      format.json { head :no_content }
      format.js   { }
    end
  end
end
