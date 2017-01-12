class MariosController < ApplicationController
  before_action :set_mario, only: [:show, :edit, :update, :destroy]

  # GET /marios
  # GET /marios.json
  def index
    @marios = Mario.all
  end

  # GET /marios/1
  # GET /marios/1.json
  def show
  end

  # GET /marios/new
  def new
    @mario = Mario.new
  end

  # GET /marios/1/edit
  def edit
  end

  # POST /marios
  # POST /marios.json
  def create
    @mario = Mario.new(mario_params)

    respond_to do |format|
      if @mario.save
        format.html { redirect_to @mario, notice: 'Mario was successfully created.' }
        format.json { render :show, status: :created, location: @mario }
      else
        format.html { render :new }
        format.json { render json: @mario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marios/1
  # PATCH/PUT /marios/1.json
  def update
    respond_to do |format|
      if @mario.update(mario_params)
        format.html { redirect_to @mario, notice: 'Mario was successfully updated.' }
        format.json { render :show, status: :ok, location: @mario }
      else
        format.html { render :edit }
        format.json { render json: @mario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marios/1
  # DELETE /marios/1.json
  def destroy
    @mario.destroy
    respond_to do |format|
      format.html { redirect_to marios_url, notice: 'Mario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mario
      @mario = Mario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mario_params
      params.require(:mario).permit(:marioUno, :marioDue)
    end
end
