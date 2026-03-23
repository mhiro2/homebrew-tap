cask "seedling-gen" do
  name "seedling-gen"
  desc "Dependency-aware test data builder CLI for Go and SQL databases"
  homepage "https://github.com/mhiro2/seedling"
  version "0.2.2"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "seedling-gen"

  on_macos do
    on_intel do
      url "https://github.com/mhiro2/seedling/releases/download/v0.2.2/seedling-gen_darwin_amd64.tar.gz",
        verified: "github.com/mhiro2/seedling/"
      sha256 "ec8734cf0a541007c24e519faaa39fbe6bbe463509346eb8df332c34bda9bd5b"
    end
    on_arm do
      url "https://github.com/mhiro2/seedling/releases/download/v0.2.2/seedling-gen_darwin_arm64.tar.gz",
        verified: "github.com/mhiro2/seedling/"
      sha256 "1c8c135d755f646b687c5ef9e95c233b39c03b1029e404d2526bcf7b4bbe6533"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/mhiro2/seedling/releases/download/v0.2.2/seedling-gen_linux_amd64.tar.gz",
        verified: "github.com/mhiro2/seedling/"
      sha256 "b4b63a68bb94812c3beac1abb56b3881d41105575fb46c21af4c7d174ca7c992"
    end
    on_arm do
      url "https://github.com/mhiro2/seedling/releases/download/v0.2.2/seedling-gen_linux_arm64.tar.gz",
        verified: "github.com/mhiro2/seedling/"
      sha256 "e43ae941fdd5cd5738716c3c52a1b93ac844d43d970638729956f733179a8392"
    end
  end

  postflight do
    if OS.mac?
      system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/seedling-gen"]
    end
  end

  # No zap stanza required
end
