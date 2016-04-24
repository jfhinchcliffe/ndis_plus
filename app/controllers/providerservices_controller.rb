class ProviderservicesController < ApplicationController
  before_action :set_providerservice, only: [:show, :edit, :update, :destroy]

  # GET /providerservices
  # GET /providerservices.json
  def index
    @providerservices = Providerservice.all
  end

  # GET /providerservices/1
  # GET /providerservices/1.json
  def show
  end

  # GET /providerservices/new
  def new
    @providerservice = Providerservice.new
  end

  # GET /providerservices/1/edit
  def edit
  end

  # POST /providerservices
  # POST /providerservices.json
  def create
    @providerservice = Providerservice.new(providerservice_params)

    respond_to do |format|
      if @providerservice.save
        format.html { redirect_to @providerservice, notice: 'Providerservice was successfully created.' }
        format.json { render :show, status: :created, location: @providerservice }
      else
        format.html { render :new }
        format.json { render json: @providerservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /providerservices/1
  # PATCH/PUT /providerservices/1.json
  def update
    respond_to do |format|
      if @providerservice.update(providerservice_params)
        format.html { redirect_to @providerservice, notice: 'Providerservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @providerservice }
      else
        format.html { render :edit }
        format.json { render json: @providerservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /providerservices/1
  # DELETE /providerservices/1.json
  def destroy
    @providerservice.destroy
    respond_to do |format|
      format.html { redirect_to providerservices_url, notice: 'Providerservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_providerservice
      @providerservice = Providerservice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def providerservice_params
      params.require(:providerservice).permit(:name, :description, :providerprofile_id)
    end
end
