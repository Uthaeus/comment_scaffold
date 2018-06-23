class TestAdsController < ApplicationController
  before_action :set_test_ad, only: [:show, :edit, :update, :destroy]

  # GET /test_ads
  # GET /test_ads.json
  def index
    @test_ads = TestAd.all
  end

  # GET /test_ads/1
  # GET /test_ads/1.json
  def show
  end

  # GET /test_ads/new
  def new
    @test_ad = TestAd.new
  end

  # GET /test_ads/1/edit
  def edit
  end

  # POST /test_ads
  # POST /test_ads.json
  def create
    @test_ad = TestAd.new(test_ad_params)

    respond_to do |format|
      if @test_ad.save
        format.html { redirect_to @test_ad, notice: 'Test ad was successfully created.' }
        format.json { render :show, status: :created, location: @test_ad }
      else
        format.html { render :new }
        format.json { render json: @test_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_ads/1
  # PATCH/PUT /test_ads/1.json
  def update
    respond_to do |format|
      if @test_ad.update(test_ad_params)
        format.html { redirect_to @test_ad, notice: 'Test ad was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_ad }
      else
        format.html { render :edit }
        format.json { render json: @test_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_ads/1
  # DELETE /test_ads/1.json
  def destroy
    @test_ad.destroy
    respond_to do |format|
      format.html { redirect_to test_ads_url, notice: 'Test ad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_ad
      @test_ad = TestAd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_ad_params
      params.require(:test_ad).permit(:title, :body, :image)
    end
end
