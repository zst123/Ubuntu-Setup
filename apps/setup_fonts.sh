# Font repos
sudo apt install -y \
fonts-bebas-neue \
fonts-powerline \
fonts-inconsolata \
ttf-mscorefonts-installer

mkdir -p ~/.fonts

# Product Sans font
mkdir -p ~/.fonts/ProductSans
cd ~/.fonts/ProductSans
wget https://befonts.com/wp-content/uploads/2018/08/product-sans.zip
unzip product-sans.zip 
rm product-sans.zip *.jpg *.png .uuid

# Refresh font cache for root and current user
sudo fc-cache -vr
fc-cache -vr

# Search for fonts
# fc-list | grep Arial
