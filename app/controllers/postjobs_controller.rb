class PostjobsController < ApplicationController
  before_action :set_postjob, only: [:show, :edit, :update, :destroy]
  def home
    #code
  end

  # GET /postjobs
  # GET /postjobs.json
  def index
    @postjobs = Postjob.all
  end

  # GET /postjobs/1
  # GET /postjobs/1.json
  def show
  end

  # GET /postjobs/new
  def new
    @postjob = Postjob.new
  end

  # GET /postjobs/1/edit
  def edit
  end

  # POST /postjobs
  # POST /postjobs.json
  def create
    @postjob = Postjob.new(postjob_params)

    respond_to do |format|
      if @postjob.save
        format.html { redirect_to @postjob, notice: 'Postjob was successfully created.' }
        format.json { render :show, status: :created, location: @postjob }
      else
        format.html { render :new }
        format.json { render json: @postjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postjobs/1
  # PATCH/PUT /postjobs/1.json
  def update
    respond_to do |format|
      if @postjob.update(postjob_params)
        format.html { redirect_to @postjob, notice: 'Postjob was successfully updated.' }
        format.json { render :show, status: :ok, location: @postjob }
      else
        format.html { render :edit }
        format.json { render json: @postjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postjobs/1
  # DELETE /postjobs/1.json
  def destroy
    @postjob.destroy
    respond_to do |format|
      format.html { redirect_to postjobs_url, notice: 'Postjob was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postjob
      @postjob = Postjob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def postjob_params
      params.require(:postjob).permit(:title, :content, :client_id, :timestamp, :price)
    end
end
