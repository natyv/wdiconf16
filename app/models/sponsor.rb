class Sponsor < ActiveRecord::Base

  def self.convert_logo(logo)
    image = Magick::ImageList.new
    image.from_blob(logo.read)
    image = image.change_geometry('400x250') { |cols,rows,img| img.resize!(cols,rows) }
    image.fuzz = '2%'
    image = image.transparent('white')
    image = image.level(- Magick::QuantumRange * 0.25, Magick::QuantumRange * 1.6)
    image = image.quantize(65535,Magick::GRAYColorspace).contrast(true)
    image.to_blob { |img| img.format = 'png' }    
  end

end
