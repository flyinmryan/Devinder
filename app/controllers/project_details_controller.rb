class ProjectDetailsController < ApplicationController
  before_action :require_login
  def contribute
    ProjectDetail.create(user: User.find(session[:user_id]), project: Project.find(params[:id]), project_status: false)
    redirect_to :back
  end

  def accept_contributor
    ProjectDetail.find(params[:id]).update(project_status: true)
    redirect_to :back
  end

  def reject_contributor
    ProjectDetail.find(params[:id]).destroy
    redirect_to :back
  end

  def offer
    ProjectDetail.create(user: User.find(params[:id]), project: Project.find(params[:p_id]), offer_status: false)
    redirect_to :back
  end

  def accept_offer
    ProjectDetail.find(params[:id]).update(offer_status: true)
    redirect_to :back
  end

  def reject_offer
    ProjectDetail.find(params[:id]).destroy
    redirect_to :back
  end
end
