# Download and extract flutter into this root folder
ROOT_FOLDER=~/Apps/flutter

mkdir -p "$ROOT_FOLDER" && \
cd "$ROOT_FOLDER" && \
wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_1.17.3-stable.tar.xz && \
tar xf ./flutter_linux_1.17.3-stable.tar.xz --strip-components=1

# Add to paths
a='$PATH:'
b="`pwd`/bin"
c="export PATH=\"${a}${b}\""

echo "# Flutter" >> ~/.bash_aliases
echo $c >> ~/.bash_aliases

