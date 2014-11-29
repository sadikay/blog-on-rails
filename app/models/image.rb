class Image < ActiveRecord::Base
  belongs_to :article
  mount_uploader :image, LogoUploader
end
