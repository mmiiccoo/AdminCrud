class AccountStudentsController < ApplicationController
  before_action :set_account_student, only: %i[ show edit update destroy ]

  # GET /account_students or /account_students.json
  def index
    @account_students = AccountStudent.all
  end

  # GET /account_students/1 or /account_students/1.json
  def show
  end

  # GET /account_students/new
  def new
    @account_student = AccountStudent.new
  end

  # GET /account_students/1/edit
  def edit
  end

  # POST /account_students or /account_students.json
  def create
    @account_student = AccountStudent.new(account_student_params)

    respond_to do |format|
      if @account_student.save
        format.html { redirect_to account_student_url(@account_student), notice: "Account student was successfully created." }
        format.json { render :show, status: :created, location: @account_student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @account_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_students/1 or /account_students/1.json
  def update
    respond_to do |format|
      if @account_student.update(account_student_params)
        format.html { redirect_to account_student_url(@account_student), notice: "Account student was successfully updated." }
        format.json { render :show, status: :ok, location: @account_student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @account_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_students/1 or /account_students/1.json
  def destroy
    @account_student.destroy

    respond_to do |format|
      format.html { redirect_to account_students_url, notice: "Account student was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_student
      @account_student = AccountStudent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_student_params
      params.require(:account_student).permit(:name, :account_name, :password)
    end
end
