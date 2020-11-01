require 'formula'

class Sshpass < Formula
  url 'https://github.com/hannahs-family/sshpass/archive/V1.06.tar.gz'
  homepage 'http://sourceforge.net/projects/sshpass'
  sha256 '9d9280f8532233933fd61a09fc7cd2eb018ddefe973f4d0d1904e499dc5464db'
  version '1.06'

  def install
    system 'PATH=/usr/local/bin:$PATH ./bootstrap'
    system './configure', '--disable-debug', '--disable-dependency-tracking',
           "--prefix=#{prefix}"
    system 'make install'
  end

  def test
    system 'sshpass'
  end
end
