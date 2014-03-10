class ImageUploaderController < ApplicationController
  def upload
  end

  def create
    pic = params[:picture]
    if 
      @blah = "Yes, pic came in, class type '<b>#{pic.class}</b>'; content_type is #{pic.content_type}".html_safe
      rand = ('a'..'z').to_a.shuffle[0..7].join('')
      imgwrite = File.open("#{pic.original_filename}_#{rand}", 'w')
      imgwrite.write(pic.read.force_encoding('UTF-8'))
    else
      @blah = "No pic here, sir!"
    end
  end
end
