module Refinery
  class BlogController < ::ApplicationController
    
    include BlogControllerHelper

    helper :'refinery/blog_posts'
    before_filter :find_page, :find_all_blog_categories

    protected

    def find_page
      @page = Refinery::Page.find_by_link_url("/blog")
    end
  end
end
