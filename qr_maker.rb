require 'rqrcode'
require 'rqrcode_png'
require 'chunky_png'

class QrMaker
  def initialize(str)
    @str = str
    @qr = RQRCode::QRCode.new(str)
  end

  def exec
    base64 = @qr.to_img.resize(200, 200).to_data_url
    puts base64
  end

  def png
    png = @qr.to_img
    png.resize(200, 200).save('out.png')
  end
end
