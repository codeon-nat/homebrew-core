class Mpck < Formula
  desc "Check MP3 files for errors"
  homepage "http://checkmate.gissen.nl/"
  url "http://checkmate.gissen.nl/checkmate-0.19.tar.gz"
  sha256 "940f95d445bab629051930ef61c5614bdfbe9df6f450f1ffab86eaf885e79195"

  bottle do
    cellar :any_skip_relocation
    sha256 "10a102462923d52990581c999b2645727071500968a02af4c79427a20d1e0ad7" => :high_sierra
    sha256 "fbdc8fda90c022cff2e3289b13926c503f83198b3c04abacc8ee5c310bbe7dda" => :sierra
    sha256 "06b69481ecd910bf2c1daff65dd7d952a8759dd90e3d76f646f82ac79812d216" => :el_capitan
    sha256 "e158ae142375591d361c6204ccc08072a29b52cee927726f9c30b063b51a0664" => :yosemite
    sha256 "fcbf3745544824e2569004626c6a307800ef55aa2fcd667d278eaa5c34340452" => :mavericks
    sha256 "09d7c03fdd0149b7efc7ecd36dab1e38de7af870484ad676d11e0ca78c7543ea" => :mountain_lion
  end

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/mpck", test_fixtures("test.mp3")
  end
end
