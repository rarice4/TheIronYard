class QuesController < ApplicationController
  before_action :authenticate_user!
  # def index
  #   # GET
  #   # List of data
  #   # Replaced by our home index CURRENTLY
  # end
  
  def index
    @ques = Que.search_names params[:q]
    respond_to do |format|
      format.js
    end
  end
  def destroy
    @que = Que.find params[:id]
    @que.delete
    # respond_to do |format|
      # format.js
    # end
  end

  def edit
    @que = Que.find params[:id]
  end
  def update
    @que = Que.find params[:id]
    @que.update_attributes que_params
    redirect_to root_path
  end

  def show
    # GET
    # Shows an individual object
    @que = Que.find params[:id]

  end

  def help_student  
    @que = Que.find params[:id]
    p @que
    @que.nick_visit!
    respond_to do |format|
      format.js
    end
  end

  def resolve_student
    @que = Que.find params[:id]
    @que.nick_leave!
    respond_to do |format|
      format.js
    end
  end

  def try_helping_student
    @que = Que.find params[:id]
    @que.nick_tried_helping!
    respond_to do |format|
      format.js
    end
  end

  def help_me
    Que.create({name: "#{current_user.first_name} #{current_user.last_name}", email: "#{current_user.email}", workflow_state: "new"})
    p "#{current_user.first_name}"  
    flash[:notice] = "You have successfully updated le Que."
    p "*"*1000
    redirect_to root_path
  end
  def help_me_destroy
    @que = Que.find params[:id]
    @que.delete
    respond_to do |format|
      format.js
    end
  end
  
  private
    def que_params
      params.require(:que).permit(:first_name, :last_name, :email, :image, :workflow_state, :name)
    end

end
