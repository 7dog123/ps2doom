
EE_OBJS =  src/am_map.o src/d_items.o src/d_main.o src/d_net.o src/doomdef.o src/doomstat.o \
src/dstrings.o src/f_finale.o src/f_wipe.o src/g_game.o src/hu_lib.o src/hu_stuff.o src/i_main.o \
src/i_net.o src/i_sound.o src/i_system.o src/i_video.o src/info.o src/m_argv.o src/m_bbox.o \
src/m_cheat.o src/m_fixed.o src/m_menu.o src/m_misc.o src/m_random.o src/m_swap.o src/p_ceilng.o \
src/p_doors.o src/p_enemy.o src/p_floor.o src/p_inter.o src/p_lights.o src/p_map.o src/p_maputl.o \
src/p_mobj.o src/p_plats.o src/p_pspr.o src/p_saveg.o src/p_setup.o src/p_sight.o src/p_spec.o \
src/p_switch.o src/p_telept.o src/p_tick.o src/p_user.o src/r_bsp.o src/r_data.o src/r_draw.o \
src/r_main.o src/r_plane.o src/r_segs.o src/r_sky.o src/r_things.o 	src/s_sound.o src/sounds.o \
src/st_lib.o src/st_stuff.o src/tables.o src/v_video.o src/w_wad.o src/wi_stuff.o src/z_zone.o src/ps2doom.o

EE_BIN = doom.elf

EE_INCS = -I$(PS2SDK)/ports/include/SDL
EE_LDFLAGS = -L$(PS2SDK)/ports/lib -L$(PS2DEV)/gsKit/lib 
EE_LIBS = -lsdlmain -lsdl -lgskit -lcdvd -lm -lps2ip -lnetman
EE_CFLAGS = -DHAVE_CONFIG_H -D_GNU_SOURCE=1 -D_REENTRANT -Wall

all: $(EE_BIN)

clean:
	rm -f $(EE_OBJS) $(EE_BIN)

run:
	ps2client execee host:$(EE_BIN)

reset:
	ps2client reset

include $(PS2SDK)/samples/Makefile.pref
include $(PS2SDK)/samples/Makefile.eeglobal

