class BsController < ApplicationController
  before_action :set_b, only: [:show, :edit, :update, :destroy]

  # GET /bs
  # GET /bs.json
  def index
    @bs = B.all
  end

  # GET /bs/1
  # GET /bs/1.json
  def show
  end

  # GET /bs/new
  def new
    @b = B.new
  end

  # GET /bs/1/edit
  def edit
  end

  # POST /bs
  # POST /bs.json
  def create
    @b = B.new(b_params)

    respond_to do |format|
      if @b.save
        format.html { redirect_to @b, notice: 'B was successfully created.' }
        format.json { render :show, status: :created, location: @b }
      else
        format.html { render :new }
        format.json { render json: @b.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bs/1
  # PATCH/PUT /bs/1.json
  def update
    respond_to do |format|
      if @b.update(b_params)
        format.html { redirect_to @b, notice: 'B was successfully updated.' }
        format.json { render :show, status: :ok, location: @b }
      else
        format.html { render :edit }
        format.json { render json: @b.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bs/1
  # DELETE /bs/1.json
  def destroy
    @b.destroy
    respond_to do |format|
      format.html { redirect_to bs_url, notice: 'B was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_b
      @b = B.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def b_params
      params.require(:b).permit(:surname)
    end
end
