# Copyright (c) 2017 Apptio
#
# This software is released under the MIT License.
#
# http://opensource.org/licenses/mit-license.php
#
class Breakglass < Formula
  desc "A command line tool to provide login credentials from Hashicorp Vault"
  homepage "https://github.com/apptio/breakglass"
  version "0.3.0-752aaef"

  if Hardware::CPU.is_64_bit?
    url "https://github.com/apptio/breakglass/releases/download/v0.3.0-752aaef/breakglass_0.3.0-752aaef_darwin_amd64.zip"
    sha256 "f2dee9153e7b53ebf5d68f1148528931e01fa818bd78e4f14af1dec983f79541"
  end

  def install
    # install
    bin.install "breakglass"
  end

  test do
    system "breakglass version"
  end

end
