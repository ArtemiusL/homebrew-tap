class Gemfury < Formula
  desc "Hosted repo for your public and private packages"
  homepage "https://gemfury.com"
  url "https://github.com/gemfury/gemfury/releases/download/v0.10.0/gemfury-0.10.0.tar.gz"
  sha256 "255bf8b02bac91047df169d119101c6134f1d48c54ca4e318f87125316bb2276"

  devel do
    url "https://github.com/gemfury/gemfury/releases/download/v0.11.0.rc1/gemfury-0.11.0.rc1.tar.gz"
    sha256 "a8c9f99a408c5aa4dfa1f94d9653cdaed600df1157ebcf4d3e342a2925b3d377"
  end

  def package_name
    "gemfury"
  end

  def install
    prefix.install Dir["*"]

    install_script = "%s/%s/packtory_tools/after_install_script" % [ prefix, package_name ]
    system(install_script) if File.exist?(install_script)

    true
  end

  test do
    true
  end
end
