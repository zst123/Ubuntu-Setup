sudo add-apt-repository ppa:js-reynaud/kicad-5.1
sudo apt update
sudo apt install --install-recommends -y kicad kicad-demos

mkdir -p $HOME/.kicad_plugins
cd $HOME/.kicad_plugins

git clone https://github.com/openscopeproject/InteractiveHtmlBom

