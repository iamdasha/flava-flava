class SearchController < ApplicationController
  def index
    @filtertags = Filtertag.all
    @artists = Artist.all
    @users = User.all
    @looks = Look.where(nil)
    @collections = Collection.where(nil)

    @lookcoms = @looks.map do |lookcom|
      lookcom.as_json(include: [:filtertag, :artist])
    end

    @posts = Post.where(nil)
    filtering_params(params).each do |key, value|
      @posts = @posts.public_send("filter_by_#{key}", value) if value.present?
    end

    @postcoms = @posts.map do |postcom|
      postcom.as_json(include: [:filtertag, :artist, :user])

    end

  end

  private

    def filtering_params(params)
      params.slice(:filtertag, :starts_with)
    end
end
