class Gift < ActiveRecord::Base

  has_attached_file :photo, 
    :styles => { :thumb => "x50", :medium => "x150"}, 
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :path => ":attachment/:id/:style.:extension",
    :bucket => 'kikipat'

end
