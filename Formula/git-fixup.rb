# frozen_string_literal: true

# Formula for personal git utils
# Pulls from the GitHub repository.
class GitFixup < Formula
  desc 'Git Fixup'
  homepage 'https://github.com/aliou/git-fixup'
  head 'https://github.com/aliou/git-fixup'

  version '1.1.0'
  sha256 '8d374c925cc0e12fad767bd93b185f81cd6116e4ab6b942f6d37991e718af2ff'

  url "https://github.com/aliou/git-fixup/archive/v#{version}.zip"

  depends_on 'fzf' => :optional

  def install
    bin.install Dir['git-*[^.1]']
    man1.install Dir['git-*.1']
  end
end
