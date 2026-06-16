# GRUJ Cleaner — limpiador profundo de cachés de desarrollo para macOS.
# Instalar:  brew install --cask fan2dev/tap/gruj
# En cada release, `version` + `sha256` los actualiza scripts/release.sh del repo de la app.
cask "gruj" do
  version "1.3.0"
  sha256 "022b60d57435c425009248d443e4eae50c9157d11157e6fc7edc1ce4e0039bc7"

  url "https://dl.gruj.alejandrofan2.dev/GRUJ-#{version}.dmg",
      verified: "dl.gruj.alejandrofan2.dev/"
  name "GRUJ Cleaner"
  desc "Deep-cleans developer caches to reclaim disk space"
  homepage "https://gruj.alejandrofan2.dev/"

  # Sparkle gestiona las actualizaciones dentro de la app; que brew no se pelee.
  auto_updates true
  depends_on macos: :ventura # macOS 13+

  app "GRUJ.app"

  zap trash: [
    "~/.config/gruj",
    "~/Library/Application Support/GRUJ",
  ]
end
