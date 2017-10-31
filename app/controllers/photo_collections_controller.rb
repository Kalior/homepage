class PhotoCollectionsController < ApplicationController
  before_action :set_photo_collection, only: [:show, :edit, :update, :destroy]

  # GET /photo_collections
  # GET /photo_collections.json
  def index
    @photo_collections = PhotoCollection.all.reverse
  end

  # GET /photo_collections/1
  # GET /photo_collections/1.json
  def show
  end

  # GET /photo_collections/new
  def new
    @photo_collection = PhotoCollection.new
  end

  # GET /photo_collections/1/edit
  def edit
  end

  # POST /photo_collections
  # POST /photo_collections.json
  def create
    @photo_collection = PhotoCollection.new(photo_collection_params)

    respond_to do |format|
      if @photo_collection.save
        format.html { redirect_to @photo_collection, notice: 'Photo collection was successfully created.' }
        format.json { render :show, status: :created, location: @photo_collection }
      else
        format.html { render :new }
        format.json { render json: @photo_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo_collections/1
  # PATCH/PUT /photo_collections/1.json
  def update
    respond_to do |format|
      if @photo_collection.update(photo_collection_params)
        format.html { redirect_to @photo_collection, notice: 'Photo collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo_collection }
      else
        format.html { render :edit }
        format.json { render json: @photo_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo_collections/1
  # DELETE /photo_collections/1.json
  def destroy
    @photo_collection.destroy
    respond_to do |format|
      format.html { redirect_to photo_collections_url, notice: 'Photo collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo_collection
      @photo_collection = PhotoCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_collection_params
      params.require(:photo_collection).permit(:title, photo_ids: [])
    end
end
