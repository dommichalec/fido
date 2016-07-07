class ContributionsController < ApplicationController

  def index
    @campaign = Campaign.find(params[:campaign_id])
    @contributions = @campaign.contributions
  end

end
