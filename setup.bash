/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install visual-studio-code

# Needs to be updated yearly for new WPILib release
brew install git
brew install wget
wget -O ~/wpilibtar "https://github.com/wpilibsuite/allwpilib/releases/download/v2019.4.1/WPILib_Mac-2019.4.1.tar.gz"
mkdir ~/frc2019 && tar -C ~/frc2019 -xvf ~/wpilibtar
cd ~/frc2019
python tools/ToolsUpdater.py 
code --install-extension vsCodeExtensions/JavaLang.vsix --install-extension vsCodeExtensions/JavaDeps.vsix --install-extension vsCodeExtensions/JavaDebug.vsix --install-extension vsCodeExtensions/WPILib.vsix