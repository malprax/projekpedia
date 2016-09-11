class ApplyjobsController < ApplicationController
  before_action :set_applyjob, only: [:show, :edit, :update, :destroy]

  # GET /applyjobs
  # GET /applyjobs.json
  def index
    @applyjobs = Applyjob.all
  end

  # GET /applyjobs/1
  # GET /applyjobs/1.json
  def show
  end

  # GET /applyjobs/new
  def new
    @applyjob = Applyjob.new
  end

  # GET /applyjobs/1/edit
  def edit
  end

  # POST /applyjobs
  # POST /applyjobs.json
  def create
    @applyjob = Applyjob.new(applyjob_params)

    respond_to do |format|
      if @applyjob.save
        format.html { redirect_to @applyjob, notice: 'Applyjob was successfully created.' }
        format.json { render :show, status: :created, location: @applyjob }
      else
        format.html { render :new }
        format.json { render json: @applyjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applyjobs/1
  # PATCH/PUT /applyjobs/1.json
  def update
    respond_to do |format|
      if @applyjob.update(applyjob_params)
        format.html { redirect_to @applyjob, notice: 'Applyjob was successfully updated.' }
        format.json { render :show, status: :ok, location: @applyjob }
      else
        format.html { render :edit }
        format.json { render json: @applyjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applyjobs/1
  # DELETE /applyjobs/1.json
  def destroy
    @applyjob.destroy
    respond_to do |format|
      format.html { redirect_to applyjobs_url, notice: 'Applyjob was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applyjob
      @applyjob = Applyjob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applyjob_params
      params.require(:applyjob).permit(:freelance_id, :price, :estimate, :applyletter, :fee)
    end
end
