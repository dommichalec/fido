class ContributionsController < ApplicationController
  before_action :set_campaign

  def index
    @contributions = @campaign.contributions
  end

  def new
    @contribution = @campaign.contributions.new
  end

  def create
    @contribution = @campaign.contributions.new(contribution_params)
    if @contribution.save
      flash[:notice] = "Boom! Thanks for your contribution."
      redirect_to campaign_path(@campaign)
    else
      render 'new'
    end
  end

  private

  def contribution_params
    params.require(:contribution).permit(:first_name, :last_name, :email, :note)
  end

  def set_campaign
    @campaign = Campaign.find(params[:campaign_id])
  end

end
