class Api::KindlesController < ApplicationController
  respond_to :json
  PER_PAGE_RECORDS = 9
  def index
    kindles_paginated = Kindle.order('id').page(params[:page]).per(PER_PAGE_RECORDS)
    json_response = {
      models: kindles_paginated,
      current_page: params[:page].to_i,
      perPage: PER_PAGE_RECORDS,
    }
    respond_with json_response, callback: params[:callback]
  end
end
