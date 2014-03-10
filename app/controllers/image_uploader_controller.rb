class ImageUploaderController < ApplicationController
  def upload
  end

  def create
    pic = params[:picture]
    if 
      @blah = "Yes, pic came in, class type '<b>#{pic.class}</b>'; content_type is #{pic.content_type}".html_safe
      rand = ('a'..'z').to_a.shuffle[0..7].join('')
      filename = "#{pic.original_filename}_#{rand}"
      #imgwrite = File.open(filename, 'w')
      #imgwrite.write(pic.read.force_encoding('UTF-8'))

      s3 = AWS::S3.new
      bucket_name = "img.demo.tmow2"
      bucket = s3.buckets[bucket_name]
      obj = bucket.objects[filename]
      obj.write(pic.read)
    else
      @blah = "No pic here, sir!"
    end
  end
end
