class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  version "1.39.13"
  conflicts_with "omnisharp-mono"

  depends_on "dotnet" => :recommended

  dotnet_version = "net6.0"
  sha256_arm = "6ed709500ab4740ca430231852e9b2d5d9bc8082e75fa0c74078ddd6ef956e1d"
  sha256_x64 = "fc1b7199102357a9c628c8de0e30426f605c6bef5325cfc7d15f934f87560317"
  url_arm = "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v#{version}/omnisharp-osx-arm64-#{dotnet_version}.zip"
  url_x64 = "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v#{version}/omnisharp-osx-x64-#{dotnet_version}.zip"

  on_arm do
    url url_arm
    sha256 sha256_arm
  end
  on_intel do
    url url_x64
    sha256 sha256_x64
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end

  def post_install
    system "/bin/chmod +x #{bin}/omnisharp"
  end

end
