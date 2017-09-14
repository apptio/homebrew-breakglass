# Copyright (c) 2017 Apptio
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Breakglass < Formula
  desc "A command line tool to provide login credentials from Hashicorp Vault"
  homepage "https://github.com/apptio/breakglass"
  version "v0.2.3-a3b136b"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/apptio/breakglass/releases/download/vv0.2.3-a3b136b/breakglass_v0.2.3-a3b136b_darwin_amd64.zip"
    sha256 "380ca9f9346df47e59e2fcb20980608cde20f063234320d8644bf0d1156cbd1b"
  end

  def install
    # install
    bin.install "breakglass"
  end

  test do
    system "breakglass version"
  end

end
