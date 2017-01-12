class FlaviaController < ApplicationController
  before_action :set_flavium, only: [:show, :edit, :update, :destroy]

  # GET /flavia
  # GET /flavia.json
  def index
    @flavia = Flavium.all
  end

  # GET /flavia/1
  # GET /flavia/1.json
  def show
  end

  # GET /flavia/new
  def new
    @flavium = Flavium.new
  end

  # GET /flavia/1/edit
  def edit
  end

  # POST /flavia
  # POST /flavia.json
  def create
    @flavium = Flavium.new(flavium_params)

    respond_to do |format|
      if @flavium.save
        format.html { redirect_to @flavium, notice: 'Flavium was successfully created.' }
        format.json { render :show, status: :created, location: @flavium }
      else
        format.html { render :new }
        format.json { render json: @flavium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flavia/1
  # PATCH/PUT /flavia/1.json
  def update
    respond_to do |format|
      if @flavium.update(flavium_params)
        format.html { redirect_to @flavium, notice: 'Flavium was successfully updated.' }
        format.json { render :show, status: :ok, location: @flavium }
      else
        format.html { render :edit }
        format.json { render json: @flavium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flavia/1
  # DELETE /flavia/1.json
  def destroy
    @flavium.destroy
    respond_to do |format|
      format.html { redirect_to flavia_url, notice: 'Flavium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flavium
      @flavium = Flavium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flavium_params
      params.require(:flavium).permit(:flaviaUno, :flaviaDue)
    end
end
