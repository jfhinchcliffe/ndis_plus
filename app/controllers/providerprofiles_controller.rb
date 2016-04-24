class ProviderprofilesController < ApplicationController
  before_action :set_providerprofile, only: [:show, :edit, :update, :destroy]
  before_action :set_services_dropdown, only: [:new, :edit]
  before_action :authenticate_provider!

  # GET /providerprofiles
  # GET /providerprofiles.json
  def index
    if current_provider.providerprofile
      redirect_to providerprofile_path(current_provider.providerprofile)
    else
      redirect_to new_providerprofile_path
    end
  end

  # GET /providerprofiles/1
  # GET /providerprofiles/1.json
  def show
  end

  # GET /providerprofiles/new
  def new
    @providerprofile = current_provider.create_providerprofile
  end

  # GET /providerprofiles/1/edit
  def edit
  end

  # POST /providerprofilesrake d
  # POST /providerprofiles.json
  def create
    @providerprofile = current_provider.providerprofile.new(providerprofile_params)

    respond_to do |format|
      if @providerprofile.save
        format.html { redirect_to @providerprofile, notice: 'Providerprofile was successfully created.' }
        format.json { render :show, status: :created, location: @providerprofile }
      else
        format.html { render :new }
        format.json { render json: @providerprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /providerprofiles/1
  # PATCH/PUT /providerprofiles/1.json
  def update
    respond_to do |format|
      if @providerprofile.update(providerprofile_params)
        format.html { redirect_to @providerprofile, notice: 'Providerprofile was successfully updated.' }
        format.json { render :show, status: :ok, location: @providerprofile }
      else
        format.html { render :edit }
        format.json { render json: @providerprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /providerprofiles/1
  # DELETE /providerprofiles/1.json
  def destroy
    @providerprofile.destroy
    respond_to do |format|
      format.html { redirect_to providerprofiles_url, notice: 'Providerprofile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_providerprofile
      @providerprofile = Providerprofile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def providerprofile_params
      params.require(:providerprofile).permit(:name, :description, :address, :phone, :email, :provider_id, providerservices_attributes: [:id, :name, :description, :_destroy])
    end
    
    def set_services_dropdown
      @service_dropdown = Masterservice.all.map{ |s| [ s.name ] }
    end
end
