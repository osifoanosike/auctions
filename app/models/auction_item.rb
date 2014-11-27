class AuctionItem < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, 
	styles: { large: ["570x570>", :png], medium: ["250x250>", :png], thumb: ["26x36>", :png] }, 
	use_timestamp: false,
	default_url: "/system/auction_items/:attachment/default/image_:style.png"
	# url: "/assets/:attachment/:id/:style/:basename.:extension",
	# path: ":rails_root/app/assets/images/:id/:style/:basename.:extension"


	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    # Validate filename
    # validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
    validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]

    validates_attachment :image,
    	presence: true,
	    content_type: { :content_type =>  ["image/jpg", "image/jpeg", "image/png", "image/gif"] },
	    :size => { :in => 0..100.kilobytes }

	# def self.absolute_url(image_source)
	# 	"#{root_path[0...-1]}/#{image_url(image_source)}"
	# end
end
