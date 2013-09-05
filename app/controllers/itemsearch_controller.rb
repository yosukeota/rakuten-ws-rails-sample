class ItemsearchController < ApplicationController
  def index
    render 'itemsearch/index'
  end

  def search
    keyword = params['keyword']
    httpClient = HTTPClient.new

    @jsonData = nil
    @errorMeg = nil

    begin
      data = httpClient.get_content('https://app.rakuten.co.jp/services/api/IchibaItem/Search/20130805', {
          'applicationId' => '1098947557275482302',
          'affiliateId'   => '11b23d62.426bf5af.11b23d63.461ea0d8',
          'keyword'       => keyword
      })
      @jsonData = JSON.parse data
      p @jsonData
    rescue HTTPClient::BadResponseError => e
    rescue HTTPClient::TimeoutError => e
    end

    render 'itemsearch/index'
  end
end
