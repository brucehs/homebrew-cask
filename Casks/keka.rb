cask 'keka' do
  version '1.1.22'
  sha256 'f69c72ad29ff4583c9d990713c5d120dd718b7307ffb2813fc032e8302e8a951'

  # github.com/aonez/Keka was verified as official when first introduced to the cask
  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  appcast 'https://github.com/aonez/Keka/releases.atom'
  name 'Keka'
  homepage 'https://www.keka.io/'

  auto_updates true
  conflicts_with cask: 'keka-beta'

  app 'Keka.app'

  zap trash: [
               '~/Library/Application Support/Keka',
               '~/Library/Caches/com.aone.keka',
               '~/Library/Preferences/com.aone.keka.plist',
               '~/Library/Saved Application State/com.aone.keka.savedState',
             ]
end
