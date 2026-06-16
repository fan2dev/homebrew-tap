# GRUJ Cleaner — limpiador profundo de cachés de desarrollo para macOS.
# Instalar:  brew install --cask fan2dev/tap/gruj
# En cada release, `version` + `sha256` los actualiza scripts/release.sh del repo de la app.
cask "gruj" do
  version "1.3.2"
  sha256 "8b3101406eb15e9e2881e78103f6ad122498959cf141b31863fddb794ffa736d"

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
