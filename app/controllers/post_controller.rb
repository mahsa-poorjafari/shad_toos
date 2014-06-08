class PostController < ApplicationController

  # @posts = Post.all(:select => "title, author, id, content, posted_at", :order => "posted_at DESC", :limit => 20) 

  # respond_to do |format|
  #  format.rss { render :layout => false }
  # end
  
  layout false
  
  def index
    @events = TimelineEvent.for_feed
    @title = "Rails Plugins Feed"
    @updated = @events.first.created_at unless @events.empty?
  end
end
