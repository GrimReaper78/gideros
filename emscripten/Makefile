CORE_SRCS=$(addprefix 2dsg/,$(notdir $(basename $(wildcard ../2dsg/*.cpp))))
CORE_SRCS+=$(addprefix 2dsg/gfxbackends/,$(notdir $(basename $(wildcard ../2dsg/gfxbackends/*.cpp))))
CORE_SRCS+=$(addprefix 2dsg/gfxbackends/gl2/,$(notdir $(basename $(wildcard ../2dsg/gfxbackends/gl2/*.cpp))))
CORE_SRCS+=$(addprefix 2dsg/paths/,$(notdir $(basename $(wildcard ../2dsg/paths/*.cpp)) svg-path ft-path))
CORE_SRCS+=$(addprefix 2dsg/paths/,$(notdir $(basename $(wildcard ../2dsg/paths/*.cpp))))

#LIQUIDFUN=external/liquidfun-1.0.0/liquidfun/Box2D/Box2D
#B2D_SRCS=$(addprefix $(LIQUIDFUN)/Common/,$(notdir $(basename $(wildcard ../$(LIQUIDFUN)/Common/*.cpp))))
#B2D_SRCS+=$(addprefix $(LIQUIDFUN)/Collision/,$(notdir $(basename $(wildcard ../$(LIQUIDFUN)/Collision/*.cpp))))
#B2D_SRCS+=$(addprefix $(LIQUIDFUN)/Collision/Shapes/,$(notdir $(basename $(wildcard ../$(LIQUIDFUN)/Collision/Shapes/*.cpp))))
#B2D_SRCS+=$(addprefix $(LIQUIDFUN)/Dynamics/,$(notdir $(basename $(wildcard ../$(LIQUIDFUN)/Dynamics/*.cpp))))
#B2D_SRCS+=$(addprefix $(LIQUIDFUN)/Dynamics/Contacts/,$(notdir $(basename $(wildcard ../$(LIQUIDFUN)/Dynamics/Contacts/*.cpp))))
#B2D_SRCS+=$(addprefix $(LIQUIDFUN)/Dynamics/Joints/,$(notdir $(basename $(wildcard ../$(LIQUIDFUN)/Dynamics/Joints/*.cpp))))
#B2D_SRCS+=$(addprefix $(LIQUIDFUN)/Rope/,$(notdir $(basename $(wildcard ../$(LIQUIDFUN)/Rope/*.cpp))))
#B2D_SRCS+=$(addprefix $(LIQUIDFUN)/Particle/,$(notdir $(basename $(wildcard ../$(LIQUIDFUN)/Particle/*.cpp))))

LBND_SRCS=$(addprefix luabinding/,$(notdir $(basename $(wildcard ../luabinding/*.cpp)))) luabinding/tlsf
LSUP_SRCS=$(addprefix libnetwork/,$(notdir $(basename $(wildcard ../libnetwork/*.cpp))))
LSUP_SRCS+=$(addprefix libpvrt/,$(notdir $(basename $(wildcard ../libpvrt/*.cpp))))
LSUP_SRCS+=$(addprefix external/glu/libtess/,$(notdir $(basename $(wildcard ../external/glu/libtess/*.c))))
LSUP_SRCS+=$(addprefix external/minizip-1.1/source/,ioapi unzip)
LGID_SRCS=$(addprefix libgid/src/,aes md5 platformutil utf8 drawinfo gtimer \
	gimage gimage-png gimage-jpg gtexture gevent glog gglobal gaudio \
	gaudio-loader-wav \
	gvfs-native)
LGID_SRCS+=$(addprefix libgideros/,event eventdispatcher eventvisitor refptr stringid luautil pluginmanager binderutil)


#    ../libgid/src/qt/platform-qt.cpp \

LGVFS_SRCS=$(addprefix libgvfs/,$(notdir $(basename $(wildcard ../libgvfs/*.c))))
LGVFS_SRCS+=$(addprefix libgvfs/,$(notdir $(basename $(wildcard ../libgvfs/*.cpp))))
LSUP_SRCS+=lua/etc/all_lua
LSUP_SRCS+=libpystring/pystring

FREETYPE_VER=2.7.1
LFRT_SRCS= $(addprefix libgid/external/freetype-$(FREETYPE_VER)/src/, \
	$(addprefix base/,ftbbox ftbitmap ftglyph ftlcdfil ftstroke ftbase ftsystem ftinit ftgasp) \
	raster/raster sfnt/sfnt smooth/smooth autofit/autofit truetype/truetype cff/cff gzip/ftgzip  \
	psnames/psnames pshinter/pshinter)

LZIP_SRCS=$(addprefix libgid/external/zlib-1.2.8/,$(notdir $(basename $(wildcard ../libgid/external/zlib-1.2.8/*.c))))
PNGFILES=png pngerror pngget pngmem pngpread pngread pngrio pngrtran pngrutil pngset pngtrans \
	pngwio pngwrite pngwtran pngwutil 
LPNG_SRCS=$(addprefix libgid/external/libpng-1.6.2/,$(PNGFILES))
JPEGFILES=jaricom jdapimin jdapistd jdarith jdatadst jdatasrc jdcoefct jdcolor jddctmgr jdhuff jdinput \
	jdmainct jdmarker jdmaster jdmerge jdpostct jdsample jdtrans jerror jfdctflt jfdctfst jfdctint \
	jidctflt jidctfst jidctint jquant1 jquant2 jutils jmemmgr jmemnobs jcomapi \
	jcapimin jcapistd jcarith jccoefct jccolor jcdctmgr jchuff jcinit jcmainct \
	jcmarker jcmaster jcparam jcprepct jcsample jctrans
LJPG_SRCS=$(addprefix libgid/external/jpeg-9/,$(JPEGFILES))
LSUP_SRCS+=$(addprefix libgid/external/snappy-1.1.0/,snappy snappy-c snappy-sinksource snappy-stubs-internal)
MP3FILES=compat dct64 dither equalizer feature format frame icy icy2utf8 id3 index layer1 layer2 layer3 \
	libmpg123 ntom optimize parse readers stringbuf synth synth_8bit synth_real synth_s32 tabinit
LMP3_SRCS=$(addprefix libgid/external/mpg123-1.15.3/src/libmpg123/,$(MP3FILES)) libgid/src/gaudio-loader-mp3
CORE_SRCS+=$(addprefix emscripten/,applicationmanager gapplication-js \
	ginput-js gaudio-js gaudio-stream-openal-js gaudio-sample-openal-js platform-js ghttp-js \
	gui-js ggeolocation-js main jsnative cJSON netplayer plugin_support)   

LOCAL_CFLAGS+=-D_REENTRANT -DLIBXMP_CORE_PLAYER
XMP_SRC=virtual period player read_event dataio lfo envelope \
		scan control filter effects mixer mix_all load_helpers load \
		hio smix memio
XMP_HDR=common effects envelope format lfo list mixer period player \
		virtual precomp_lut hio memio mdataio tempfile 
XMP_LOADERS=xm_load s3m_load it_load \
			common itsex sample
XMP_LOADERS_HDR=it loader mod s3m xm
LXMP_SRCS+=$(addprefix libgid/external/libxmp-4.3/src/,$(XMP_SRC))
LXMP_SRCS+=$(addprefix libgid/external/libxmp-4.3/src/loaders/,$(XMP_LOADERS))
LXMP_SRCS+=$(addprefix libgid/external/libxmp-4.3/lite/src/,format loaders/mod_load)
LXMP_SRCS+=libgid/src/gaudio-loader-xmp 
					


INCS=2dsg libgideros libgid/include libgvfs libpystring
INCS+=2dsg/gfxbackends 2dsg/gfxbackends/gl2 2dsg/paths
INCS+=luabinding libnetwork
INCS+=$(addprefix libgid/external/freetype-$(FREETYPE_VER)/,include src)
INCS+=$(LIQUIDFUN)/.. external/glu
INCS+=libgid/external/zlib-1.2.8 libgid/external/libpng-1.6.2 \
	$(addprefix libgid/external/openal-soft-1.13/,include/AL OpenAL32/Include) \
	libgid/external/snappy-1.1.0 libgid/external/jpeg-9 \
	libgid/external/mpg123-1.15.3/src \
	libgid/external/mpg123-1.15.3/src/libmpg123 \
	libgid/external/libxmp-4.3/include \
	libgid/external/libxmp-4.3/src \
	libgid/external/libxmp-4.3/src/loaders 
INCS+=lua/src
INCS+=libgvfs/private
INCS+=emscripten

#LIBS+=prebuilt/libfreetype.so

EMCC=$(EMSDK_PREFIX) emcc
EMAR=$(EMSDK_PREFIX) emar
CRUNCHME?=crunchme-linux-amd64
CRUNCHME_TOOL=crunchme-0.4/bin/$(CRUNCHME)
BUILD=Build

POPTS=
#POPTS+= -s PRECISE_F32=1
ifneq ($(PROFILING),)
POPTS+=--profiling
endif

OPTS+=-Os $(POPTS)
LOPTS=--llvm-opts "['-disable-inlining']"
LOPTS_WASM=$(LOPTS)
LOPTS_JS=$(LOPTS) --separate-asm

export POPTS

$(BUILD)/emscripten/plugin_support.em.o: CFLGS+=--llvm-opts "['-disable-inlining']" -fno-rtti -fno-exceptions 

#LINE BELOW FOR WASM
EOPTS_WASM+= WASM=1 TOTAL_MEMORY=256*1024*1024 'ALLOW_MEMORY_GROWTH=1 BINARYEN_METHOD="native-wasm"' 'BINARYEN_TRAP_MODE="clamp"'
EOPTS+='EXTRA_EXPORTED_RUNTIME_METHODS=["addRunDependency","removeRunDependency","ccall","cwrap","getValue","UTF8ToString"]'
#EOPTS+=EMCC_FORCE_STDLIBS
#EOPTS+=EXPORT_ALL=1
EOPTS+=MAIN_MODULE=2  
#EOPTS+=ASSERTIONS=1
#EOPTS+=GL_STATE_CACHE=1
EOPTS+=DISABLE_EXCEPTION_CATCHING=0
#EOPTS+=ALLOW_MEMORY_GROWTH=1

ifneq ($(DEBUG),)
OPTS+=-g4
EOPTS+=ASSERTIONS=2
else
OPTS+=--emit-symbol-map
endif

CINCS=$(addprefix -I../,$(INCS))
CFLGS=-DFT2_BUILD_LIBRARY -DDARWIN_NO_CARBON -DHAVE_UNISTD_H \
	-DOPT_GENERIC -DREAL_IS_FLOAT \
	-D_REENTRANT -DLIBXMP_CORE_PLAYER \
	$(OPTS)
CFLGS+=	-fno-rtti -DEMSCRIPTEN_HAS_UNBOUND_TYPE_NAMES=0

TEMPLATECOM=$(BUILD)/Html5/Html5
TEMPLATEJASM=$(BUILD)/Html5/Jasm
TEMPLATEWASM=$(BUILD)/Html5/Wasm

PLUGINS=$(HTML5_PLUGINS)
PLUGINS?=bitop luasocket json

EP_Xmp_SRCS=$(LXMP_SRCS) emscripten/ep_xmp
EP_Mp3_SRCS=$(LMP3_SRCS) emscripten/ep_mp3
EP_LIBS=EP_Xmp EP_Mp3
export HTML5_ROOT=$(PWD)

template: main

template.zip: template
	cd $(BUILD); rm -f Html5.zip; zip -r Html5.zip Html5/; 

plugins:
	R=$(PWD); for p in $(PLUGINS); do cd ../plugins/$$p/source/emscripten; $(MAKE); cd -; done

plugins.clean:
	R=$(PWD); for p in $(PLUGINS); do cd ../plugins/$$p/source/emscripten; $(MAKE) clean; cd -; done

%.plugin:
	R=$(PWD); cd ../plugins/$*/source/emscripten; $(MAKE); cd -

%.plugin.clean:
	R=$(PWD); cd ../plugins/$*/source/emscripten; $(MAKE) clean; cd -

SUBLIBS=CORE LBND LGID LGVFS LZIP LPNG LJPG LSUP LFRT 
SUBLIBS_AR=$(addprefix $(BUILD)/lib,$(addsuffix .bc,$(SUBLIBS)))

define SUB_template
$$(BUILD)/lib$(1).a: $$(addprefix $(BUILD)/,$$(addsuffix .em.o,$$($(1)_SRCS)))
$$(BUILD)/lib$(1).bc: $$(addprefix $(BUILD)/,$$(addsuffix .em.o,$$($(1)_SRCS)))
SUBLIBS_SRCS+=$$($(1)_SRCS)
endef

define SUB_fileopt
$(1): $(2)
endef

define SUB_libopt
$(foreach src,$($(1)),$(eval $(call SUB_fileopt,$(addprefix $(BUILD)/,$(addsuffix .em.o,$(src))),$(2))))
endef

$(call SUB_libopt,B2D_SRCS,CFLGS+=-fno-rtti -fno-exceptions)
$(call SUB_libopt,LGVFS_SRCS,CFLGS+=-DGIDEROS_LIBRARY)
$(call SUB_libopt,LGID_SRCS,CFLGS+=-DGIDEROS_LIBRARY)
 
$(foreach sub,$(SUBLIBS),$(eval $(call SUB_template,$(sub))))

SUBLIBS_OBJS=$(addprefix $(BUILD)/,$(addsuffix .em.o,$(SUBLIBS_SRCS)))

define EP_template
$$(BUILD)/$(1).js: $$(addprefix $(BUILD)/,$$(addsuffix .em.o,$$($(1)_SRCS)))
	@echo "EMLINK JS" $(TARGET)
	@$$(EMCC) $$(addprefix $(BUILD)/,$$(addsuffix .em.o,$$($(1)_SRCS))) -s SIDE_MODULE=1 -s WASM=0 -s DISABLE_EXCEPTION_CATCHING=0 $(OPTS) -o $$@
	
$$(BUILD)/$(1).wasm: $$(addprefix $(BUILD)/,$$(addsuffix .em.o,$$($(1)_SRCS)))
	@echo "SYMGEN" $(TARGET)
	@$$(EMCC) $$(addprefix $(BUILD)/,$$(addsuffix .em.o,$$($(1)_SRCS))) -s SIDE_MODULE=1 -s WASM=1 -s DISABLE_EXCEPTION_CATCHING=0 $(OPTS) -g -o $$@
	@grep 'import "env"' $(BUILD)/$(1).wast | grep '(func'| cut -d' ' -f4 >$(BUILD)/$(1).syms
	@echo "EMLINK WASM" $(TARGET)
	@$$(EMCC) $$(addprefix $(BUILD)/,$$(addsuffix .em.o,$$($(1)_SRCS))) -s SIDE_MODULE=1 -s WASM=1 -s DISABLE_EXCEPTION_CATCHING=0 $(OPTS) -o $$@
SUBLIBS_SRCS+=$$($(1)_SRCS)
endef

$(foreach sub,$(EP_LIBS),$(eval $(call EP_template,$(sub))))

EMPTY :=
SPACE := $(EMPTY) $(EMPTY)
COMMA :=,
EXP_FUNCS_LIST=$(sort $(shell grep -vh "invoke_" $(BUILD)/*.syms | sed -e 's/g\$$//')))
EXP_FUNCS=["_main",$(subst $(SPACE),$(COMMA),$(sort $(shell grep -vh "invoke_" $(BUILD)/*.syms | sed -e 's/g\$$//')))]

$(BUILD)/lib%.a:
	@echo "EMAR" $@
	@$(EMAR) r $@ $^

$(BUILD)/lib%.bc:
	@echo "EMLD" $@
	@$(EMCC) -o $@ $^

keep: 
	echo "#define KEEP(v) extern volatile const char *v; *v;" >emscripten/_keep.c
	echo "void _keep() {" >>emscripten/_keep.c
	grep -vh "invoke_" emscripten/Build/*.syms | sort | uniq | sed -e 's/g\$$//;s/"//g;s/^/KEEP\(/;s/$$/)/' >>emscripten/_keep.c
	echo "}" >>emscripten/_keep.c
					
$(BUILD)/gideros.html: $(SUBLIBS_AR) $(OBJS) gidjs.js gui.js gidpost.js gidshell.html plugins
	@echo "EMLINK gideros JS"
	@$(EMCC) $(OBJS) $(LIBS) $(addprefix -s ,$(EOPTS)) -s EXPORTED_FUNCTIONS=$(EXP_FUNCS) -s WASM=0 $(OPTS) $(LOPTS_JS) $(SUBLIBS_AR) -o $(BUILD)/gideros.html --pre-js gidjs.js --pre-js gui.js --post-js gidpost.js --shell-file gidshell.html

$(BUILD)/gideros-wasm.html: $(SUBLIBS_AR) $(OBJS) gidjs.js gui.js gidpost.js gidshell.html plugins
	@echo "SYMGEN gideros"
	@$(EMCC) $(OBJS) $(LIBS) -g $(addprefix -s ,$(EOPTS) $(EOPTS_WASM)) -s EXPORTED_FUNCTIONS=$(EXP_FUNCS) $(OPTS) $(LOPTS_WASM) $(SUBLIBS_AR) -o $(BUILD)/gideros-wasm.html --pre-js gidjs.js --pre-js gui.js --post-js gidpost.js --shell-file gidshell.html
	@grep '(export ' $(BUILD)/gideros-wasm.wast | grep '(func'| cut -d' ' -f3 >$(BUILD)/gideros.esyms
	@echo "EMLINK gideros WASM"
	@$(EMCC) $(OBJS) $(LIBS) $(addprefix -s ,$(EOPTS) $(EOPTS_WASM)) -s EXPORTED_FUNCTIONS=$(EXP_FUNCS) $(OPTS) $(LOPTS_WASM) $(SUBLIBS_AR) -o $(BUILD)/gideros-wasm.html --pre-js gidjs.js --pre-js gui.js --post-js gidpost.js --shell-file gidshell.html
	

main: path $(BUILD)/gideros.html $(BUILD)/gideros-wasm.html $(addprefix $(BUILD)/,$(addsuffix .wasm,$(EP_LIBS)) $(addsuffix .js,$(EP_LIBS)))
	cp gideros.png $(TEMPLATECOM)
	cp gideros.css $(TEMPLATECOM)
	cp $(BUILD)/gideros.html $(TEMPLATEJASM)/index.html
	-cp $(BUILD)/gideros.html.mem $(TEMPLATEJASM) 
	cp $(BUILD)/gideros.js $(TEMPLATEJASM)
	cp $(BUILD)/gideros.asm.js $(TEMPLATEJASM)
	-cp $(BUILD)/gideros.html.symbols $(TEMPLATEJASM)
	-cp $(BUILD)/gideros.js.map $(TEMPLATEJASM)
	cp $(BUILD)/gideros-wasm.wasm $(TEMPLATEWASM) 
	cp $(BUILD)/gideros-wasm.js $(TEMPLATEWASM) 
	cp $(BUILD)/gideros-wasm.html $(TEMPLATEWASM)/index.html
	-cp $(BUILD)/gideros-wasm.html.symbols $(TEMPLATEWASM)
	cp $(BUILD)/EP_*.js $(TEMPLATEJASM)
	cp $(BUILD)/EP_*.wasm $(TEMPLATEWASM)
	cp jzptool.js $(TEMPLATECOM)
	cp lzma.js $(TEMPLATECOM)
	#$(CRUNCHME_TOOL) -nostrip -i pace.min.js $(TEMPLATE)/pace.js.png
	#$(CRUNCHME_TOOL) -nostrip -i $(BUILD)/gideros.js $(TEMPLATE)/gideros.js.png
	

path:
	mkdir -p $(sort $(dir $(SUBLIBS_OBJS)))
	mkdir -p $(TEMPLATECOM) $(TEMPLATEJASM) $(TEMPLATEWASM)

clean:
	rm -rf $(BUILD)

setup:
	$(EMSDK_PREFIX) emsdk.bat activate latest
	
init:
	$(EMSDK_PREFIX) emcc

$(BUILD)/%.em.o: ../%.cpp
	@echo "EMC+ $<"
	@$(EMCC) $(CINCS) $(CFLGS) -std=c++11 -c $< --default-obj-ext .em.o -o $@

$(BUILD)/%.em.o: ../%.c
	@echo "EMCC $<"
	@$(EMCC) $(CINCS) $(CFLGS) -c $< --default-obj-ext .em.o -o $@

