class Benchie < Formula
  desc "Faster Nmap Scanning with Rust" 
  homepage "https://github.com/benchie-io/benchie"
  url "https://github.com/benchie-io/benchie/archive/0.4.0.tar.gz"
  sha256 "61d849e1ff6fc856b9b1ded5e6d3a35bc77a09f87b569311654a2b1c207de3fd"
  version "0.4.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
    bin.install "target/release/benchie"
  end
end