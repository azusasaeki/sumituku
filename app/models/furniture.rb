class Furniture < ApplicationRecord
	 mount_uploader :furniture_image, ImageUploader
	 mount_uploader :kodawari_img, ImageUploader


# 検索
	def self.search(search) #self.でクラスメソッドとしている
      if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
        Furniture.where(['language LIKE ?', "%#{search}%"])
      else
        Furniture.all #全て表示。
      end
    end 
end
