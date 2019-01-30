class DharugWordsController < ApplicationController
  before_action :set_dharug, only: :show
  def index
    #Fetch all of the words and start a loop for each one
    @dharug = Array.new
    Dharug.all.each do |word|
      #For each word start a loop of its' sources, to pull out the shorthand
      @sources = Array.new
      word.source.each do |source|
        @sources << source.shorthand
      end
      #Refine the data to be presented
      @dharug << {
        :dharug_word => word.dharug_word,
        :enlgish_word => word.english_word,
        :sources => @sources
      }

    end
    #Present the refined data
    render json:@dharug
  end

  def show
    @dharug = Array.new
    @search_results.each do |word|
      @sources = Array.new
      word.source.each do |source|
        @sources << source.shorthand
      end
      @dharug << {
        :dharug_word => word.dharug_word,
        :enlgish_word => word.english_word,
        :sources => @sources
      }
    end
    render json:@dharug
  end

  private

    def dharug_params
      # whitelist params
      params.permit(:dharug, :english)
    end

    def set_dharug
      if(params.has_key?(:dharug))
        @search_results = Dharug.where("lower(dharug_word) = ?", params[:dharug].downcase)
      elsif(params.has_key?(:english))
        @search_results = Dharug.where("lower(english_word) =?", params[:english].downcase)

    end
  end
end
