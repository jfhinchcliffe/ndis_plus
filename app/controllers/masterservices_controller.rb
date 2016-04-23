class MasterservicesController < ApplicationController
  before_action :set_masterservice, only: [:show, :edit, :update, :destroy]

  # GET /masterservices
  # GET /masterservices.json
  def index
    @masterservices = Masterservice.all
  end

  # GET /masterservices/1
  # GET /masterservices/1.json
  def show
  end

  # GET /masterservices/new
  def new
    @masterservice = Masterservice.new
  end

  # GET /masterservices/1/edit
  def edit
  end

  # POST /masterservices
  # POST /masterservices.json
  def create
    @masterservice = Masterservice.new(masterservice_params)

    respond_to do |format|
      if @masterservice.save
        format.html { redirect_to @masterservice, notice: 'Masterservice was successfully created.' }
        format.json { render :show, status: :created, location: @masterservice }
      else
        format.html { render :new }
        format.json { render json: @masterservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masterservices/1
  # PATCH/PUT /masterservices/1.json
  def update
    respond_to do |format|
      if @masterservice.update(masterservice_params)
        format.html { redirect_to @masterservice, notice: 'Masterservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @masterservice }
      else
        format.html { render :edit }
        format.json { render json: @masterservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masterservices/1
  # DELETE /masterservices/1.json
  def destroy
    @masterservice.destroy
    respond_to do |format|
      format.html { redirect_to masterservices_url, notice: 'Masterservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masterservice
      @masterservice = Masterservice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def masterservice_params
      params.require(:masterservice).permit(:name, :description)
    end
end
