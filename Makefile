fl2000_drm-y := fl2000_drm.o \
		fl2000_drm_intr.o \
		fl2000_drm_i2c.o \
		fl2000_drm_regs.o

obj-m := fl2000_drm.o

KSRC = /lib/modules/$(shell uname -r)/build

all:	modules

modules:
	make -C $(KSRC) M=$(PWD) modules

clean:
	make -C $(KSRC) M=$(PWD) clean
	rm -f Module.symvers
