class DisplayController < ApplicationController

  def show
    if params.include?'service_id'
      @service = Service.find(params[:service_id])
    elsif params.include?'project_id'
      @project = Project.find(params[:project_id])
    elsif params.include?'client_id'
      @client = Client.find(params[:client_id])
    elsif params.include?'clients'
      @projects = Project.all.find(params[:projects])
    elsif params.include?'team_id'
      @team = TeamMember.all.find(params[:team_id])
    end
  end

  def index
    if params[:index] == "services"
      @services = Service.all
    elsif params[:index] == "runningProjects"
      @runningProjects = Project.all.where(status: 0)
    elsif params[:index] == "completedProjects"
      @completedProjects = Project.all.where(status: 1)
    elsif params[:index] == "clients"
      @clients = Client.all
    end
  end
end
