class ProjectsController < ApplicationController
  before_action :get_project, only: [:show, :update, :edit, :delete]
  before_action :authenticate_user!, except: [:index]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def show; end
  
  def edit; end

  def create
    @project = Project.new(params_project)

    respond_to do |format|
      if @project.save 
        format.html { redirect_to @project, flash: 'project created successful' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new, flash: 'somenthing went worng creating' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @project.update(params_project) 
        format.html { redirect_to @project, flash: 'project updated successful' }
        format.json { render :show, status: :updated, location: @project }
      else
        format.html { render :edit, status: 'somenthing went worng updating' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
    respond_to do |format|
      if @project.destroy 
        format.html { redirect_to :index, flash: 'project deleted successful' }
        format.json { render :index, status: :deleted }
      else
        format.html { redirect_to @project, flash: 'somenthing went worng deleting' }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def params_project
    params.require(:project).permit(:name, :description, :link, :user_id)
  end

  def get_project
    @project = Project.find(params[:id])
  end
end
