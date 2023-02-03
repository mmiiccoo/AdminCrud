class AccountTeachersController < ApplicationController
  before_action :set_account_teacher, only: %i[ show edit update destroy ]

  # GET /account_teachers or /account_teachers.json
  def index
    @account_teachers = AccountTeacher.all
  end

  # GET /account_teachers/1 or /account_teachers/1.json
  def show
  end

  # GET /account_teachers/new
  def new
    @account_teacher = AccountTeacher.new
  end

  # GET /account_teachers/1/edit
  def edit
  end

  # POST /account_teachers or /account_teachers.json
  def create
    @account_teacher = AccountTeacher.new(account_teacher_params)

    respond_to do |format|
      if @account_teacher.save
        format.html { redirect_to account_teacher_url(@account_teacher), notice: "Account teacher was successfully created." }
        format.json { render :show, status: :created, location: @account_teacher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @account_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_teachers/1 or /account_teachers/1.json
  def update
    respond_to do |format|
      if @account_teacher.update(account_teacher_params)
        format.html { redirect_to account_teacher_url(@account_teacher), notice: "Account teacher was successfully updated." }
        format.json { render :show, status: :ok, location: @account_teacher }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @account_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_teachers/1 or /account_teachers/1.json
  def destroy
    @account_teacher.destroy

    respond_to do |format|
      format.html { redirect_to account_teachers_url, notice: "Account teacher was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_teacher
      @account_teacher = AccountTeacher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_teacher_params
      params.require(:account_teacher).permit(:name, :account_name, :password)
    end
end
