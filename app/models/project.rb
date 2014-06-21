class Project < ActiveRecord::Base
  
  has_attached_file :photo,
  :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  
  # :url => "/images/:attachment/:id_:style.:extension",
  # :path => ":rails_root/public/images/:attachment/:id_:style.:extension"

  do_not_validate_attachment_file_type :photo
  
  has_attached_file :attachfile

  # styles: lambda { |a| a.instance.check_file_type}

  # def check_file_type
  #   if is_image_type?
  #     {
  #       :small => "x200>", :medium => "x300>", :large => "x400>"
  #     }
  #   elsif is_video_type?
  #     {
  #       :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10, :processors => [:ffmpeg] },
  #       :medium => {:geometry => "250x150#", :format => 'jpg', :time => 10, :processors => [:ffmpeg]}
  #     }
  #   else
  #     {
  #     }
  #   end
  # end
  
  # def is_image_type?
  #   attachfile_content_type =~ %r(image)
  # end
  
  # def is_video_type?
  #   attachfile_content_type =~ %r(video)
  # end

  # validates_attachment_content_type :attachfile, :content_type => [/\Aimage\/.*\Z/, /\Avideo\/.*\Z/, /\Aaudio\/.*\Z/, /\Aapplication\/.*\Z/]


  validates_attachment_size :attachfile, :less_than => 10.megabytes                                    
  has_many :comments
  belongs_to :user, :foreign_key => 'user_id' 
end
