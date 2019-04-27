require 'rqrcode'
require 'rqrcode_png'
require 'chunky_png'

class QrMaker
  def initialize(str)
    @str = str
    @qr = RQRCode::QRCode.new(str)
  end

  def print
    puts base64
  end

  def png(output_filename: 'out')
    img.save("#{output_filename}.png")
  end

  private

  def img
    @qr.to_img.resize(200, 200)
  end

  def base64
    img.to_data_url
  end
end
