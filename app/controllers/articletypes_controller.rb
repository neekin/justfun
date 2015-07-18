class ArticletypesController < AdminController
  before_action :set_articletype, only: [:show, :edit, :update, :destroy]

  # GET /articletypes
  # GET /articletypes.json
  def index
    @articletypes = Articletype.all
  end

  # GET /articletypes/1
  # GET /articletypes/1.json
  def show
  end

  # GET /articletypes/new
  def new
    @articletype = Articletype.new
  end

  # GET /articletypes/1/edit
  def edit
  end

  # POST /articletypes
  # POST /articletypes.json
  def create
    @articletype = Articletype.new(articletype_params)

    respond_to do |format|
      if @articletype.save
        format.html { redirect_to @articletype, notice: 'Articletype was successfully created.' }
        format.json { render :show, status: :created, location: @articletype }
      else
        format.html { render :new }
        format.json { render json: @articletype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /articletypes/1
  # PATCH/PUT /articletypes/1.json
  def update
    respond_to do |format|
      if @articletype.update(articletype_params)
        format.html { redirect_to @articletype, notice: 'Articletype was successfully updated.' }
        format.json { render :show, status: :ok, location: @articletype }
      else
        format.html { render :edit }
        format.json { render json: @articletype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articletypes/1
  # DELETE /articletypes/1.json
  def destroy
    @articletype.destroy
    respond_to do |format|
      format.html { redirect_to articletypes_url, notice: 'Articletype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_articletype
      @articletype = Articletype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def articletype_params
      params.require(:articletype).permit(:name)
    end
end
