class SpeedforceUsersController < ApplicationController
  before_action :set_speedforce_user, only: %i[ show edit update destroy ]

  # GET /speedforce_users or /speedforce_users.json
  def index
    @speedforce_users = SpeedforceUser.all
  end

  # GET /speedforce_users/1 or /speedforce_users/1.json
  def show
  end

  # GET /speedforce_users/new
  def new
    @speedforce_user = SpeedforceUser.new
  end

  # GET /speedforce_users/1/edit
  def edit
  end

  # POST /speedforce_users or /speedforce_users.json
  def create
    @speedforce_user = SpeedforceUser.new(speedforce_user_params)

    respond_to do |format|
      if @speedforce_user.save
        format.html { redirect_to @speedforce_user, notice: "Speedforce user was successfully created." }
        format.json { render :show, status: :created, location: @speedforce_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @speedforce_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speedforce_users/1 or /speedforce_users/1.json
  def update
    respond_to do |format|
      if @speedforce_user.update(speedforce_user_params)
        format.html { redirect_to @speedforce_user, notice: "Speedforce user was successfully updated." }
        format.json { render :show, status: :ok, location: @speedforce_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @speedforce_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speedforce_users/1 or /speedforce_users/1.json
  def destroy
    @speedforce_user.destroy
    respond_to do |format|
      format.html { redirect_to speedforce_users_url, notice: "Speedforce user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speedforce_user
      @speedforce_user = SpeedforceUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def speedforce_user_params
      params.require(:speedforce_user).permit(:name, :phone, :email, :emergency_contact_name, :emergency_contact_phone, :emergency_contact_email, :force, :speed, :latitude, :longitude)
    end
end
