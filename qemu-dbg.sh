if [ ! -f "sd.bin" ]; then
dd if=/dev/zero of=sd.bin bs=1024 count=65536
fi


qemu-system-arm -M lm3s6965evb -device loader,file=nuttx/nuttx -serial mon:stdio -nographic -S -s