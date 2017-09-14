# Copyright (c) 2017 Apptio
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Breakglass < Formula
  desc "A command line tool to provide login credentials from Hashicorp Vault"
  homepage "https://github.com/apptio/breakglass"
  version "0.2.3-c0a7cec"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/apptio/breakglass/releases/download/v0.2.3-c0a7cec/breakglass_0.2.3-c0a7cec_darwin_amd64.zip"
    sha256 "bbfb3a37ebd8079d6d4daf5e42e81d997c2951957eba5fe3271957fcb63c3142"
  end

  def install
    # install
    bin.install "breakglass"
  end

  test do
    system "breakglass version"
  end

end
