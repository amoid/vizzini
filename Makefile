obj-m := xr_usb_serial_common.o

KERNELDIR ?= /home/zewanz/work/aio_3288j_dev/aio_3288j_kern_dev_zw/aio/

PWD       := $(shell pwd)

EXTRA_CFLAGS	:= -DDEBUG=0

all:
	$(MAKE) -C $(KERNELDIR) M=$(PWD)

modules_install:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules_install

clean:
	rm -rf *.o *~ core .depend .*.cmd *.ko *.mod.c .tmp_versions vtty
