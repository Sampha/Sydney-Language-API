class SourcesController < ApplicationController
  before_action :set_source, only: :show

  def index
    @sources = Array.new
    Source.all.each do |source|
      @sources << {
        source: source.source,
        shorthand: source.shorthand
      }
    end
    render json: @sources
  end

  def show
    @sources = Array.new
    @search_results.each do |source|
      @dharug_words = Array.new
      @alternate_vocabularies = Array.new
      source.dharug.each do |dharug|
        @dharug_words << dharug.dharug_word
      end
      source.alternate_vocabularies.each do |alt|
        @alternate_vocabularies << {
          dharug: alt.dharug.dharug_word,
          english: alt.dharug.english_word,
          alternate_vocabulary: alt.dharug_word
        }
      end
      @sources << {
        source: source.source,
        shorthand: source.shorthand,
        dharug_words: @dharug_words,
        alternate_vocabularies: @alternate_vocabularies
      }
    end
    render json: @sources
  end

  private

    def source_params
      # whitelist params
      params.permit(:shorthand)
    end

    def set_source
      @search_results = Source.where(shorthand: params[:shorthand])
    end

end
