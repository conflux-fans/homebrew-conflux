# Build from source
class Conflux < Formula
  desc "Official Rust implementation of the Conflux protocol"
  homepage "https://github.com/conflux-chain/conflux-rust"
  url "https://github.com/conflux-chain/conflux-rust.git", :tag => "v1.1.4"

  head do
    url "https://github.com/conflux-chain/conflux-rust.git", :branch => "master"
  end

  # Require El Capitan at least
  depends_on :macos => :el_capitan

  # Is there a better way to ensure that frameworks (IOKit, CoreServices, etc) are installed?
  depends_on :xcode => :build
  depends_on "cmake" => :build
  depends_on "rust" => :build

  def install
    # ENV["GOROOT"] = "#{HOMEBREW_PREFIX}/opt/go/libexec"
    system "cargo", "build", "--release"
    bin.install "target/release/conflux"
    # bin.install_symlink bin/"xh" => "xhs"    ref xh's formulea
  end

  test do
    system "#{HOMEBREW_PREFIX}/bin/conflux", "--version"
  end
end