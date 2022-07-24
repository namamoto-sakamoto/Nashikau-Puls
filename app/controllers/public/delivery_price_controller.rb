class Public::DeliveryPriceController < ApplicationController
  # 配送料金のコントローラー
  
  # スクレイピング
  agent = Mechanize.new
  page = agent.get("https://otayoripost.net/ryokin/pack/kyusyu.html")
  elements = page.search('table th')
  elements = page.search('table td')

  elements.each do |ele|
    puts ele.inner_text
  end
end
