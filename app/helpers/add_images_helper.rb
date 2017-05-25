module AddImagesHelper
	def works_imgs name, type_key
  		data = "<img src='http://img.youtube.com/vi/" + type_key + "/mqdefault.jpg' style=' height:100px; width:200px;' class='you_tube_spot first_spot' data-index='" + type_key + "' data-page='" + name + "_page_mid'>"
  		data.html_safe
  	end
end