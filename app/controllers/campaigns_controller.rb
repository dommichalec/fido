class CampaignsController < ApplicationController

  def index
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def edit
    @campaign = Campaign.find(params[:id])
  end

  def update
    @campaign = Campaign.find(params[:id])
    @campaign.update(campaign_params)
    redirect_to campaign_path(@campaign)
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.save
    redirect_to campaign_path(@campaign)
  end

  private

  def campaign_params
    params.require(:campaign).
      permit(:title, :description, :amount_needed, :medical_partner)
  end
end
