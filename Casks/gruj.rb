# GRUJ Cleaner — limpiador profundo de cachés de desarrollo para macOS.
# Instalar:  brew install --cask fan2dev/tap/gruj
# En cada release, `version` + `sha256` los actualiza scripts/release.sh del repo de la app.
cask "gruj" do
  version "1.4.0"
  sha256 "245f251a4555b104bbba07a1eb1279eaf13260bc5c4d1e86b827895e28fae862"

  url "https://dl.gruj.alejandrofan2.dev/GRUJ-#{version}.dmg",
      verified: "dl.gruj.alejandrofan2.dev/"
  name "GRUJ Cleaner"
  desc "Deep-cleans developer caches to reclaim disk space"
  homepage "https://gruj.alejandrofan2.dev/"

  # Sparkle gestiona las actualizaciones dentro de la app; que brew no se pelee.
  auto_updates true
  depends_on macos: :ventura # macOS 13+

  app "GRUJ.app"
  # CLI: enlaza el binario empotrado al PATH (p. ej. /opt/homebrew/bin/gruj).
  binary "#{appdir}/GRUJ.app/Contents/Helpers/gruj"

  zap trash: [
    "~/.config/gruj",
    "~/Library/Application Support/GRUJ",
  ]
end
