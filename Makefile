DEMONAME=odc2
ROMPATH=~/nonfree/MAME0172/ROMs/
all: rom run

rom: $(DEMONAME).rom

run: $(DEMONAME).rom
	~/mame/mame64 -rp $(ROMPATH) -window odyssey2 -cart $(DEMONAME).rom

debug: $(DEMONAME).rom
	~/mame/mame64 -rp $(ROMPATH) -window odyssey2 -cart $(DEMONAME).rom -debug

$(DEMONAME).rom: $(DEMONAME).p
	p2bin $< $@ -r \$$400-\$$bff

%.p: %.a48
	asl -a -u -q -i .. $< -o $@

cos_table.inc: cos_table.py
	python cos_table.py >$@

clean:
	rm -f $(DEMONAME).p cos_table.inc

# dependencies
$(DEMONAME).p: g7000.h cos_table.inc

