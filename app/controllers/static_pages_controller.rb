class StaticPagesController < ApplicationController
  
  def home   
    if (params[:search] != "") && (params[:search] != nil)
      @search = params[:search]
      
      Twitter.configure do |config|
        config.consumer_key = "nUiqT1CjwQBCHJcD7w"
        config.consumer_secret = "B9uTQaigT4K1EN3hWMXwzR6TcGtWmWJufbDJdQxgIk"
        config.oauth_token = "27543441-yOdmFsKHQJLP1sX1LCHnFtQkhIWkPSCJFL8GYiZc"
        config.oauth_token_secret = "lghlxjtPtmFlkoVjzZjozISqaZS1f8P1wXArNpPkpQ"
      end
      
      Twitter.search("#{@search} -rt", :rpp => 1).results.map do |status|
        @user = "#{status.from_user}"
        @id = "#{status.id}"  
      end
      
    else
      @search = nil
    end
  end
  
end
