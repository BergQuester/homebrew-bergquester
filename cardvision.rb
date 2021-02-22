class Cardvision < Formula
  desc "Library for Reading Apple Card Transaction History Screenshots"
  homepage "https://github.com/BergQuester/CardVision/"
  url "https://github.com/BergQuester/CardVision/archive/0.2.0.tar.gz"
  sha256 "f407e829cee8725b6aa077be47190df7b73244c49a24881955df7e527a8460d0"
  license "MIT"

  depends_on xcode: ["11.7", :build]
  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize
    system "swift", "build", "--disable-sandbox", "-c", "release"
    system "mv", ".build/release/CardVisionCLI", ".build/release/cardvision"
    bin.install ".build/release/cardvision"
  end

  test do
    system "true"
  end
end
