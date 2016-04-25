class ImdBsController < ApplicationController
  before_action :set_imdb, only: [:show, :edit, :update, :destroy]

  # GET /imdbs
  # GET /imdbs.json
  def index
    @imdbs = Imdb.all
  end

  # GET /imdbs/1
  # GET /imdbs/1.json
  def show
  end

  # GET /imdbs/new
  def new
    @imdb = Imdb.new
  end

  # GET /imdbs/1/edit
  def edit
  end

  # POST /imdbs
  # POST /imdbs.json
  def create
    @imdb = Imdb.new(imdb_params)

    respond_to do |format|
      if @imdb.save
        format.html { redirect_to @imdb, notice: 'Imdb was successfully created.' }
        format.json { render :show, status: :created, location: @imdb }
      else
        format.html { render :new }
        format.json { render json: @imdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imdbs/1
  # PATCH/PUT /imdbs/1.json
  def update
    respond_to do |format|
      if @imdb.update(imdb_params)
        format.html { redirect_to @imdb, notice: 'Imdb was successfully updated.' }
        format.json { render :show, status: :ok, location: @imdb }
      else
        format.html { render :edit }
        format.json { render json: @imdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imdbs/1
  # DELETE /imdbs/1.json
  def destroy
    @imdb.destroy
    respond_to do |format|
      format.html { redirect_to imdbs_url, notice: 'Imdb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imdb
      @imdb = Imdb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imdb_params
      params.require(:imdb).permit(:title, :actor_id, :genre_id)
    end
end
