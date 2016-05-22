class Sponsor < ActiveRecord::Base

  def self.convert_logo(logo, size)
    image = Magick::ImageList.new
    image.from_blob(logo.read)
    image = image.change_geometry(dimensions(size)) { |cols,rows,img| img.resize!(cols,rows) }
    image.fuzz = '2%'
    image = image.transparent('white')
    image = image.level(- Magick::QuantumRange * 0.25, Magick::QuantumRange * 1.6)
    image = image.quantize(65535,Magick::GRAYColorspace).contrast(true)
    image.to_blob { |img| img.format = 'png' }    
  end

  private

  def self.dimensions(size)
    case size
    when 'large'
        '500x250'
    when 'medium'
        '300x150'
    when 'small'
        '150x80'
    end
  end

end
