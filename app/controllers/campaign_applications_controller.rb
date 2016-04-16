class CampaignApplicationsController < ApplicationController
  before_action :set_campaign_application, only: [:show, :edit, :update, :destroy]
  permits :read_book_1_title, :read_book_1_date, :read_book_2_title, :read_book_2_date, :read_book_3_title, :read_book_3_date, :read_book_4_title, :read_book_4_date

  # GET /campaign_applications
  def index
    @campaign_applications = CampaignApplication.all
  end

  # GET /campaign_applications/1
  def show
  end

  # GET /campaign_applications/new
  def new
    @campaign_application = CampaignApplication.new
  end

  # GET /campaign_applications/1/edit
  def edit
  end

  # POST /campaign_applications
  def create(campaign_application)
    @campaign_application = CampaignApplication.new(campaign_application)

    if @campaign_application.save
      redirect_to @campaign_application, notice: 'Campaign application was successfully created.'
    else
      render :new
    end
  end

  # PUT /campaign_applications/1
  def update(campaign_application)
    if @campaign_application.update(campaign_application)
      redirect_to @campaign_application, notice: 'Campaign application was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /campaign_applications/1
  def destroy
    @campaign_application.destroy

    redirect_to campaign_applications_url, notice: 'Campaign application was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaign_application(id)
      @campaign_application = CampaignApplication.find(id)
    end
end
