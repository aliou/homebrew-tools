# frozen_string_literal: true

# Formula for personal git utils
# Pulls from the GitHub repository.
class GitFixup < Formula
  desc 'Git Fixup'
  homepage 'https://github.com/aliou/git-fixup'
  head 'https://github.com/aliou/git-fixup'

  version '1.0.0'
  sha256 '9192d47214df74156428e61660232874216f6af3aeda4871791dc36ab6a870fe'

  url "https://github.com/aliou/git-fixup/archive/v#{version}.zip"

  depends_on 'fzf' => :optional

  def install
    bin.install Dir['git-*[^.1]']
    man1.install Dir['git-*.1']
  end
end
