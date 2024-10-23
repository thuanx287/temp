#!/bin/bash -e

if [ ! -d "easy-proot" ]; then
    mkdir easy-proot && cd easy-proot

    wget https://proot.gitlab.io/proot/bin/proot
    chmod 755 ./proot

    wget https://github.com/EXALAB/Anlinux-Resources/raw/master/Rootfs/Debian/amd64/debian-rootfs-amd64.tar.xz
    tar -xf debian-rootfs-amd64.tar.xz

    # upgrade & install tor
    ./proot -S . echo -e '#!/bin/bash\n\napt update && apt upgrade -y\napt install tor -y' > first-run.sh
    ./proot -S . bash first-run.sh && rm -rf first-run.sh
else
    cd easy-proot
fi

./proot -S . /bin/bash
