class OmnisharpMono < Formula
  desc "Cross platform .NET development in the editor of your choice"
  homepage "http://www.omnisharp.net/"
  url "https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v1.39.13/omnisharp-mono.tar.gz"
  version "1.39.13"
  sha256 "c4266700ff695eb71701fdb63119e88a8753fda5adf2522d1146a632870d9908"
  conflicts_with "omnisharp"

  depends_on "mono" => :recommended

  def install
    libexec.install Dir["*"]

    # To match non-mono install, create an `omnisharp' shell script.
    (bin/"omnisharp").write <<~EOS
      #!/usr/bin/env sh
      mono "#{libexec}/OmniSharp.exe" $@
    EOS
  end

  def post_install
    system "/bin/chmod +x #{bin}/omnisharp"
  end

end
