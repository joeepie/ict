class ExtractorsController < ApplicationController
  def index
  end

  def extract

  	r = Regexp.new(/\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\b/)
  	@text_in = params[:text_in]
  	emails = @text_in.scan(r).uniq #application of regular expression on input text
  	@count = emails.size
  	if emails.empty?
  		@text_out = "No valid emails in text."
  	else
  		@text_out = emails.join(", ")
  	end

  	render "index"
  end

  def about
  	
  end

  def contact
  	
  end
end
