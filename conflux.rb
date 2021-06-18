class Conflux < Formula
  desc "Official Rust implementation of Conflux protocol"
  homepage "https://confluxnetwork.org/"
  url "https://github.com/Conflux-Chain/conflux-rust/releases/download/v1.1.4/conflux_mac_v1.1.4.zip"
  sha256 "7174ad635d867d379a88b7b3e01ce0a5b6ed02ea0096ceab7942ccbc67504369"
  license "GPL-3.0"

  # bottle do
  #   sha256 big_sur: "7174ad635d867d379a88b7b3e01ce0a5b6ed02ea0096ceab7942ccbc67504369"
  #   sha256 sierra: "7174ad635d867d379a88b7b3e01ce0a5b6ed02ea0096ceab7942ccbc67504369"
  #   sha256 el_capitan: "7174ad635d867d379a88b7b3e01ce0a5b6ed02ea0096ceab7942ccbc67504369"
  # end

  # bottle do
  #   sha256 cellar: :any_skip_relocation, big_sur: "ddd49e30aff2fd18495e67a574853fe25bc91317e6f6d6385b368d75a0eedb06"
  # end

  def install
    bin.install "conflux"
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/conflux", "--version"
  end
end
