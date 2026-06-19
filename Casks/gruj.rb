# GRUJ Cleaner — limpiador profundo de cachés de desarrollo para macOS.
# Instalar:  brew install --cask fan2dev/tap/gruj
# En cada release, `version` + `sha256` los actualiza scripts/release.sh del repo de la app.
cask "gruj" do
  version "1.3.6"
  sha256 "fad2ce636b2fc75bec64bfd09c00bd682eb8dbcf6301fc89f86c4604a3477880"

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
