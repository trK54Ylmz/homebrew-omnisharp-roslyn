class Omnisharp < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.13/omnisharp-osx.tar.gz"
  version "1.39.13"
  sha256 "180ae980212efb3374964635352ab1cac944cb711fe7e5ae20a94e9bd6a68e72"
  conflicts_with "omnisharp-mono"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/omnisharp"
  end
end
