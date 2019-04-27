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

  def png
    img.save('out.png')
  end

  private

  def img
    @qr.to_img.resize(200, 200)
  end

  def base64
    img.to_data_url
  end
end
