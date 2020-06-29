class SemestersController < ApplicationController
  before_action :set_semester, only: [:show, :edit, :update, :destroy]

  # GET /semesters
  # GET /semesters.json
  def index
    @semesters = Semester.paginate(page: params[:page], per_page: 5)
  end

  # GET /semesters/1
  # GET /semesters/1.json
  def show
    @semester = Semester.find(params[:id])
  end

  # GET /semesters/new
  def new
    @semester = Semester.new
  end

  # GET /semesters/1/edit
  def edit
    @semester = Semester.find(params[:id])
  end

  # POST /semesters
  # POST /semesters.json
  def create
    @semester = Semester.new(semester_params)
        if @semester.save
            flash[:notice] = "Semester is successfully created"
            redirect_to semester_path(@semester)
        else
            render 'new'
        end
  end

  # PATCH/PUT /semesters/1
  # PATCH/PUT /semesters/1.json
  def update
    @semester = Semester.find(params[:id])
        if @semester.update(semester_params)
            flash[:success] = "Semester information was updated successfully"
            redirect_to root_path
        else
            render 'edit'
        end
  end

  # DELETE /semesters/1
  # DELETE /semesters/1.json
  def destroy
    @semester.destroy
    respond_to do |format|
      format.html { redirect_to semesters_url, notice: 'Semester was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_semester
      @semester = Semester.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def semester_params
      params.require(:semester).permit(:ay, :sem, :past)
    end
end
