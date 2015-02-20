 class PropertiesController < ApplicationController
  before_action :authenticate_user!, except: [:new]
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json
  def index
    @properties = current_user.properties
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    if user_signed_in? 
      @property = Property.new
    else
      redirect_to property_owner_welcome_index_path
    end
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = current_user.properties.new(property_params)

    respond_to do |format|
      if @property.save
        add_photos
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    
    respond_to do |format|
      if @property.update(property_params)
        add_photos
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
  end

  private

    def add_photos 
      if params[:property][:photos]
          params[:property][:photos].each do |p|
            photo = @property.photos.new
            photo.file = p 
            photo.save
          end
        end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = current_user.properties.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:type, :city, :address, :price, :bathrooms, :bedrooms, :description)
    end
end
