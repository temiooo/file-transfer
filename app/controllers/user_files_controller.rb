class UserFilesController < ApplicationController

  # GET /user_files
  # GET /user_files.json
  def index
    @user_files = UserFile.all.with_attached_user_file
  end

  # GET /user_files/new
  def new
    @user_file = UserFile.new
  end

  # POST /user_files
  # POST /user_files.json
  def create
    @user_file = UserFile.new(user_file_params)

      if @user_file.save
        flash[:notice] = "File uploaded successfully."
        redirect_to root_url
      else
        flash[:alert] = "Please attach a file to upload"
        redirect_to root_url
      end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_file_params
      params.require(:user_file).permit(:user_file)
    end
end
