class UrlController < ApplicationController
	def new_url
		server = 'http://localhost:3000/url/'
		@link = Link.create(url: params[:url])
		@link.update_attribute :url_short, server + @link.id.to_s
	end
	def go_to
		link = Link.find(params[:id])
		if link.visites.nil?
			link.update_attribute :visites, 1
		else
			link.update_attribute :visites, link.visites + 1
		end

		redirect_to link.url
	end
	def most_visited_pages
		@links = Link.order("visites DESC").limit(10)
	end
end
