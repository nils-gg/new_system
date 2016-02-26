#/bin/bash
#Nils Gerstner 2016-02-26

# Install base tools and programs 
sudo zypper install aria2 keepassx texmaker calibre chromium MozillaFirefox libreoffice git discount

# Install picins.sty for Latex-mail templates
cd /usr/share/texmf/tex/latex/
sudo mkdir picins
cd picins
wget http://mirrors.ctan.org/macros/latex209/contrib/picins/picins.sty
sudo chown root. picins.sty
sudo texhash

