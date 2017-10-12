# Copyright (c) 2017 Apptio
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Breakglass < Formula
  desc "A command line tool to provide login credentials from Hashicorp Vault"
  homepage "https://github.com/apptio/breakglass"
  version "0.3.0-80eb8c7"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/apptio/breakglass/releases/download/v0.3.0-80eb8c7/breakglass_0.3.0-80eb8c7_darwin_amd64.zip"
    sha256 "fe44a8ca7b9f0852e0077d1f4cc1c017eaf928841c04af399c2169d54a467fcb"
  end

  def install
    # install
    bin.install "breakglass"
  end

  test do
    system "breakglass version"
  end

end
