
class ApisController < ApplicationController
  def index
    @campaign = Campaign.find_by(site: params[:site], area: params[:area], size: params[:size])
    @creative = Creative.find_by(name: @campaign.creative)
    if @campaign.startdate > DateTime.now || @campaign.enddate < DateTime.now
      @creative = nil
    end
  end
end

