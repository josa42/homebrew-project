  
class Project < Formula
  desc ""
  version "0.0.0"

  homepage "https://github.com/josa42/project"
  head "https://github.com/josa42/project.git"
  url "https://github.com/josa42/project/archive/#{version}.tar.gz"
  sha256 ""

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"project"
    (prefix/"plugin").install "plugin/project.vim"
  end

  test do
    system bin/"project", "--help"
  end
end
