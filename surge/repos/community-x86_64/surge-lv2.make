# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug_x64
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

RESCOMP = windres
INCLUDES += -Isrc/linux -Ilibs/xml -Ilibs/strnatcmp -Ilibs/nanosvg/src -Isrc/common/vt_dsp -Isrc/common/thread -Ivstgui.surge -Ilibs -Isrc/common -Isrc/common/dsp -Isrc/common/gui -Isrc/lv2 -Ilibs/lv2 -Ivst3sdk
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LIBS += -lpthread -lstdc++fs -lgcc_s -lgcc -ldl
LDDEPS +=
LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
define PREBUILDCMDS
	@echo Running prebuild commands
	python scripts/linux/emit-vector-piggy.py .
endef
define PRELINKCMDS
endef

ifeq ($(config),debug_x64)
TARGETDIR = target/lv2/Debug/Surge.lv2
TARGET = $(TARGETDIR)/Surge-Debug.so
OBJDIR = obj/x64/Debug/surge-lv2
DEFINES += -DVSTGUI_ENABLE_DEPRECATED_METHODS=0 -DSURGE_VERSION=1.6.6 -DDEBUG=1 -DRELEASE=0 -DLINUX=1 -D_aligned_malloc\(x,a\)=malloc\(x\) -D_aligned_free\(x\)=free\(x\) -DTARGET_LV2=1
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -ffast-math -fPIC -g -msse2 -std=c++17 -Wno-unused-variable `pkg-config --cflags cairo fontconfig freetype2 xkbcommon-x11 xcb-cursor xcb-keysyms xcb-xkb xcb-util x11` -std=c++14
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -ffast-math -fPIC -g -msse2 -std=c++17 -Wno-unused-variable `pkg-config --cflags cairo fontconfig freetype2 xkbcommon-x11 xcb-cursor xcb-keysyms xcb-xkb xcb-util x11` -std=c++14
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -shared -Wl,-soname=Surge-Debug.so `pkg-config --libs cairo fontconfig freetype2 xkbcommon-x11 xcb-cursor xcb-keysyms xcb-xkb xcb-util x11` -Wl,--no-undefined
define POSTBUILDCMDS
	@echo Running postbuild commands
	python scripts/linux/generate-lv2-ttl.py target/lv2/Debug/Surge.lv2/Surge-Debug.so
endef

else ifeq ($(config),debug_x86)
TARGETDIR = target/lv2/Debug/Surge.lv2
TARGET = $(TARGETDIR)/Surge-Debug.so
OBJDIR = obj/x86/Debug/surge-lv2
DEFINES += -DVSTGUI_ENABLE_DEPRECATED_METHODS=0 -DSURGE_VERSION=1.6.6 -DDEBUG=1 -DRELEASE=0 -DLINUX=1 -D_aligned_malloc\(x,a\)=malloc\(x\) -D_aligned_free\(x\)=free\(x\) -DTARGET_LV2=1
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -ffast-math -fPIC -g -msse2 -std=c++17 -Wno-unused-variable `pkg-config --cflags cairo fontconfig freetype2 xkbcommon-x11 xcb-cursor xcb-keysyms xcb-xkb xcb-util x11` -std=c++14
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -ffast-math -fPIC -g -msse2 -std=c++17 -Wno-unused-variable `pkg-config --cflags cairo fontconfig freetype2 xkbcommon-x11 xcb-cursor xcb-keysyms xcb-xkb xcb-util x11` -std=c++14
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -shared -Wl,-soname=Surge-Debug.so `pkg-config --libs cairo fontconfig freetype2 xkbcommon-x11 xcb-cursor xcb-keysyms xcb-xkb xcb-util x11` -Wl,--no-undefined
define POSTBUILDCMDS
	@echo Running postbuild commands
	python scripts/linux/generate-lv2-ttl.py target/lv2/Debug/Surge.lv2/Surge-Debug.so
endef

else ifeq ($(config),release_x64)
TARGETDIR = target/lv2/Release/Surge.lv2
TARGET = $(TARGETDIR)/Surge.so
OBJDIR = obj/x64/Release/surge-lv2
DEFINES += -DVSTGUI_ENABLE_DEPRECATED_METHODS=0 -DSURGE_VERSION=1.6.6 -DDEBUG=0 -DRELEASE=1 -DLINUX=1 -D_aligned_malloc\(x,a\)=malloc\(x\) -D_aligned_free\(x\)=free\(x\) -DTARGET_LV2=1
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -ffast-math -O3 -fPIC -msse2 -std=c++17 -Wno-unused-variable `pkg-config --cflags cairo fontconfig freetype2 xkbcommon-x11 xcb-cursor xcb-keysyms xcb-xkb xcb-util x11` -std=c++14 -fvisibility=hidden -fvisibility-inlines-hidden -fdata-sections -ffunction-sections
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -ffast-math -O3 -fPIC -msse2 -std=c++17 -Wno-unused-variable `pkg-config --cflags cairo fontconfig freetype2 xkbcommon-x11 xcb-cursor xcb-keysyms xcb-xkb xcb-util x11` -std=c++14 -fvisibility=hidden -fvisibility-inlines-hidden -fdata-sections -ffunction-sections
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -shared -Wl,-soname=Surge.so -s `pkg-config --libs cairo fontconfig freetype2 xkbcommon-x11 xcb-cursor xcb-keysyms xcb-xkb xcb-util x11` -Wl,--no-undefined -fdata-sections -ffunction-sections -Wl,-O1 -Wl,--as-needed -Wl,--gc-sections -Wl,--strip-all
define POSTBUILDCMDS
	@echo Running postbuild commands
	python scripts/linux/generate-lv2-ttl.py target/lv2/Release/Surge.lv2/Surge.so
endef

else ifeq ($(config),release_x86)
TARGETDIR = target/lv2/Release/Surge.lv2
TARGET = $(TARGETDIR)/Surge.so
OBJDIR = obj/x86/Release/surge-lv2
DEFINES += -DVSTGUI_ENABLE_DEPRECATED_METHODS=0 -DSURGE_VERSION=1.6.6 -DDEBUG=0 -DRELEASE=1 -DLINUX=1 -D_aligned_malloc\(x,a\)=malloc\(x\) -D_aligned_free\(x\)=free\(x\) -DTARGET_LV2=1
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -ffast-math -O3 -fPIC -msse2 -std=c++17 -Wno-unused-variable `pkg-config --cflags cairo fontconfig freetype2 xkbcommon-x11 xcb-cursor xcb-keysyms xcb-xkb xcb-util x11` -std=c++14 -fvisibility=hidden -fvisibility-inlines-hidden -fdata-sections -ffunction-sections
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -ffast-math -O3 -fPIC -msse2 -std=c++17 -Wno-unused-variable `pkg-config --cflags cairo fontconfig freetype2 xkbcommon-x11 xcb-cursor xcb-keysyms xcb-xkb xcb-util x11` -std=c++14 -fvisibility=hidden -fvisibility-inlines-hidden -fdata-sections -ffunction-sections
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -shared -Wl,-soname=Surge.so -s `pkg-config --libs cairo fontconfig freetype2 xkbcommon-x11 xcb-cursor xcb-keysyms xcb-xkb xcb-util x11` -Wl,--no-undefined -fdata-sections -ffunction-sections -Wl,-O1 -Wl,--as-needed -Wl,--gc-sections -Wl,--strip-all
define POSTBUILDCMDS
	@echo Running postbuild commands
	python scripts/linux/generate-lv2-ttl.py target/lv2/Release/Surge.lv2/Surge.so
endef

endif

# Per File Configurations
# #############################################


# File sets
# #############################################

GENERATED :=
OBJECTS :=

GENERATED += $(OBJDIR)/AdsrEnvelope.o
GENERATED += $(OBJDIR)/BiquadFilter.o
GENERATED += $(OBJDIR)/BiquadFilterSSE2.o
GENERATED += $(OBJDIR)/CAboutBox.o
GENERATED += $(OBJDIR)/CCursorHidingControl.o
GENERATED += $(OBJDIR)/CDIBitmap.o
GENERATED += $(OBJDIR)/CEffectSettings.o
GENERATED += $(OBJDIR)/CHSwitch2.o
GENERATED += $(OBJDIR)/CLFOGui.o
GENERATED += $(OBJDIR)/CModulationSourceButton.o
GENERATED += $(OBJDIR)/CNumberField.o
GENERATED += $(OBJDIR)/COscillatorDisplay.o
GENERATED += $(OBJDIR)/CPatchBrowser.o
GENERATED += $(OBJDIR)/CScalableBitmap.o
GENERATED += $(OBJDIR)/CSnapshotMenu.o
GENERATED += $(OBJDIR)/CStatusPanel.o
GENERATED += $(OBJDIR)/CSurgeSlider.o
GENERATED += $(OBJDIR)/CSurgeVuMeter.o
GENERATED += $(OBJDIR)/CSwitchControl.o
GENERATED += $(OBJDIR)/ConditionerEffect.o
GENERATED += $(OBJDIR)/ConfigurationXml.o
GENERATED += $(OBJDIR)/CriticalSection.o
GENERATED += $(OBJDIR)/DisplayInfoLinux.o
GENERATED += $(OBJDIR)/DistortionEffect.o
GENERATED += $(OBJDIR)/DspUtilities.o
GENERATED += $(OBJDIR)/DualDelayEffect.o
GENERATED += $(OBJDIR)/Effect.o
GENERATED += $(OBJDIR)/FMOscillator.o
GENERATED += $(OBJDIR)/FilterCoefficientMaker.o
GENERATED += $(OBJDIR)/FpuState.o
GENERATED += $(OBJDIR)/FreqshiftEffect.o
GENERATED += $(OBJDIR)/LfoModulationSource.o
GENERATED += $(OBJDIR)/LinuxVST3Helpers.o
GENERATED += $(OBJDIR)/Oscillator.o
GENERATED += $(OBJDIR)/Parameter.o
GENERATED += $(OBJDIR)/PhaserEffect.o
GENERATED += $(OBJDIR)/PopupEditorDialog.o
GENERATED += $(OBJDIR)/QuadFilterChain.o
GENERATED += $(OBJDIR)/QuadFilterUnit.o
GENERATED += $(OBJDIR)/Reverb1Effect.o
GENERATED += $(OBJDIR)/Reverb2Effect.o
GENERATED += $(OBJDIR)/RotarySpeakerEffect.o
GENERATED += $(OBJDIR)/RuntimeFontLinux.o
GENERATED += $(OBJDIR)/SampleAndHoldOscillator.o
GENERATED += $(OBJDIR)/ScalablePiggy.o
GENERATED += $(OBJDIR)/SurgeBitmaps.o
GENERATED += $(OBJDIR)/SurgeError.o
GENERATED += $(OBJDIR)/SurgeGUIEditor.o
GENERATED += $(OBJDIR)/SurgeLv2Export.o
GENERATED += $(OBJDIR)/SurgeLv2Ui.o
GENERATED += $(OBJDIR)/SurgeLv2Util.o
GENERATED += $(OBJDIR)/SurgeLv2Vstgui.o
GENERATED += $(OBJDIR)/SurgeLv2Wrapper.o
GENERATED += $(OBJDIR)/SurgePatch.o
GENERATED += $(OBJDIR)/SurgeStorage.o
GENERATED += $(OBJDIR)/SurgeSuperOscillator.o
GENERATED += $(OBJDIR)/SurgeSynthesizer.o
GENERATED += $(OBJDIR)/SurgeSynthesizerIO.o
GENERATED += $(OBJDIR)/SurgeVoice.o
GENERATED += $(OBJDIR)/Tunings.o
GENERATED += $(OBJDIR)/UserDefaults.o
GENERATED += $(OBJDIR)/UserInteractionsLinux.o
GENERATED += $(OBJDIR)/VectorizedSvfFilter.o
GENERATED += $(OBJDIR)/VocoderEffect.o
GENERATED += $(OBJDIR)/WavSupport.o
GENERATED += $(OBJDIR)/Wavetable.o
GENERATED += $(OBJDIR)/WavetableOscillator.o
GENERATED += $(OBJDIR)/WindowOscillator.o
GENERATED += $(OBJDIR)/basic_dsp.o
GENERATED += $(OBJDIR)/cairobitmap.o
GENERATED += $(OBJDIR)/cairocontext.o
GENERATED += $(OBJDIR)/cairofont.o
GENERATED += $(OBJDIR)/cairogradient.o
GENERATED += $(OBJDIR)/cairopath.o
GENERATED += $(OBJDIR)/filesystem.o
GENERATED += $(OBJDIR)/genericoptionmenu.o
GENERATED += $(OBJDIR)/generictextedit.o
GENERATED += $(OBJDIR)/halfratefilter.o
GENERATED += $(OBJDIR)/linux-aeffguieditor.o
GENERATED += $(OBJDIR)/linuxstring.o
GENERATED += $(OBJDIR)/lipol.o
GENERATED += $(OBJDIR)/macspecific.o
GENERATED += $(OBJDIR)/plugguieditor.o
GENERATED += $(OBJDIR)/precompiled.o
GENERATED += $(OBJDIR)/strnatcmp.o
GENERATED += $(OBJDIR)/tinyxml.o
GENERATED += $(OBJDIR)/tinyxmlerror.o
GENERATED += $(OBJDIR)/tinyxmlparser.o
GENERATED += $(OBJDIR)/vstgui.o
GENERATED += $(OBJDIR)/x11fileselector.o
GENERATED += $(OBJDIR)/x11frame.o
GENERATED += $(OBJDIR)/x11platform.o
GENERATED += $(OBJDIR)/x11timer.o
GENERATED += $(OBJDIR)/x11utils.o
OBJECTS += $(OBJDIR)/AdsrEnvelope.o
OBJECTS += $(OBJDIR)/BiquadFilter.o
OBJECTS += $(OBJDIR)/BiquadFilterSSE2.o
OBJECTS += $(OBJDIR)/CAboutBox.o
OBJECTS += $(OBJDIR)/CCursorHidingControl.o
OBJECTS += $(OBJDIR)/CDIBitmap.o
OBJECTS += $(OBJDIR)/CEffectSettings.o
OBJECTS += $(OBJDIR)/CHSwitch2.o
OBJECTS += $(OBJDIR)/CLFOGui.o
OBJECTS += $(OBJDIR)/CModulationSourceButton.o
OBJECTS += $(OBJDIR)/CNumberField.o
OBJECTS += $(OBJDIR)/COscillatorDisplay.o
OBJECTS += $(OBJDIR)/CPatchBrowser.o
OBJECTS += $(OBJDIR)/CScalableBitmap.o
OBJECTS += $(OBJDIR)/CSnapshotMenu.o
OBJECTS += $(OBJDIR)/CStatusPanel.o
OBJECTS += $(OBJDIR)/CSurgeSlider.o
OBJECTS += $(OBJDIR)/CSurgeVuMeter.o
OBJECTS += $(OBJDIR)/CSwitchControl.o
OBJECTS += $(OBJDIR)/ConditionerEffect.o
OBJECTS += $(OBJDIR)/ConfigurationXml.o
OBJECTS += $(OBJDIR)/CriticalSection.o
OBJECTS += $(OBJDIR)/DisplayInfoLinux.o
OBJECTS += $(OBJDIR)/DistortionEffect.o
OBJECTS += $(OBJDIR)/DspUtilities.o
OBJECTS += $(OBJDIR)/DualDelayEffect.o
OBJECTS += $(OBJDIR)/Effect.o
OBJECTS += $(OBJDIR)/FMOscillator.o
OBJECTS += $(OBJDIR)/FilterCoefficientMaker.o
OBJECTS += $(OBJDIR)/FpuState.o
OBJECTS += $(OBJDIR)/FreqshiftEffect.o
OBJECTS += $(OBJDIR)/LfoModulationSource.o
OBJECTS += $(OBJDIR)/LinuxVST3Helpers.o
OBJECTS += $(OBJDIR)/Oscillator.o
OBJECTS += $(OBJDIR)/Parameter.o
OBJECTS += $(OBJDIR)/PhaserEffect.o
OBJECTS += $(OBJDIR)/PopupEditorDialog.o
OBJECTS += $(OBJDIR)/QuadFilterChain.o
OBJECTS += $(OBJDIR)/QuadFilterUnit.o
OBJECTS += $(OBJDIR)/Reverb1Effect.o
OBJECTS += $(OBJDIR)/Reverb2Effect.o
OBJECTS += $(OBJDIR)/RotarySpeakerEffect.o
OBJECTS += $(OBJDIR)/RuntimeFontLinux.o
OBJECTS += $(OBJDIR)/SampleAndHoldOscillator.o
OBJECTS += $(OBJDIR)/ScalablePiggy.o
OBJECTS += $(OBJDIR)/SurgeBitmaps.o
OBJECTS += $(OBJDIR)/SurgeError.o
OBJECTS += $(OBJDIR)/SurgeGUIEditor.o
OBJECTS += $(OBJDIR)/SurgeLv2Export.o
OBJECTS += $(OBJDIR)/SurgeLv2Ui.o
OBJECTS += $(OBJDIR)/SurgeLv2Util.o
OBJECTS += $(OBJDIR)/SurgeLv2Vstgui.o
OBJECTS += $(OBJDIR)/SurgeLv2Wrapper.o
OBJECTS += $(OBJDIR)/SurgePatch.o
OBJECTS += $(OBJDIR)/SurgeStorage.o
OBJECTS += $(OBJDIR)/SurgeSuperOscillator.o
OBJECTS += $(OBJDIR)/SurgeSynthesizer.o
OBJECTS += $(OBJDIR)/SurgeSynthesizerIO.o
OBJECTS += $(OBJDIR)/SurgeVoice.o
OBJECTS += $(OBJDIR)/Tunings.o
OBJECTS += $(OBJDIR)/UserDefaults.o
OBJECTS += $(OBJDIR)/UserInteractionsLinux.o
OBJECTS += $(OBJDIR)/VectorizedSvfFilter.o
OBJECTS += $(OBJDIR)/VocoderEffect.o
OBJECTS += $(OBJDIR)/WavSupport.o
OBJECTS += $(OBJDIR)/Wavetable.o
OBJECTS += $(OBJDIR)/WavetableOscillator.o
OBJECTS += $(OBJDIR)/WindowOscillator.o
OBJECTS += $(OBJDIR)/basic_dsp.o
OBJECTS += $(OBJDIR)/cairobitmap.o
OBJECTS += $(OBJDIR)/cairocontext.o
OBJECTS += $(OBJDIR)/cairofont.o
OBJECTS += $(OBJDIR)/cairogradient.o
OBJECTS += $(OBJDIR)/cairopath.o
OBJECTS += $(OBJDIR)/filesystem.o
OBJECTS += $(OBJDIR)/genericoptionmenu.o
OBJECTS += $(OBJDIR)/generictextedit.o
OBJECTS += $(OBJDIR)/halfratefilter.o
OBJECTS += $(OBJDIR)/linux-aeffguieditor.o
OBJECTS += $(OBJDIR)/linuxstring.o
OBJECTS += $(OBJDIR)/lipol.o
OBJECTS += $(OBJDIR)/macspecific.o
OBJECTS += $(OBJDIR)/plugguieditor.o
OBJECTS += $(OBJDIR)/precompiled.o
OBJECTS += $(OBJDIR)/strnatcmp.o
OBJECTS += $(OBJDIR)/tinyxml.o
OBJECTS += $(OBJDIR)/tinyxmlerror.o
OBJECTS += $(OBJDIR)/tinyxmlparser.o
OBJECTS += $(OBJDIR)/vstgui.o
OBJECTS += $(OBJDIR)/x11fileselector.o
OBJECTS += $(OBJDIR)/x11frame.o
OBJECTS += $(OBJDIR)/x11platform.o
OBJECTS += $(OBJDIR)/x11timer.o
OBJECTS += $(OBJDIR)/x11utils.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(GENERATED) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking surge-lv2
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning surge-lv2
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(GENERATED)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(GENERATED)) rmdir /s /q $(subst /,\\,$(GENERATED))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/filesystem.o: libs/filesystem/filesystem.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strnatcmp.o: libs/strnatcmp/strnatcmp.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tinyxml.o: libs/xml/tinyxml.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tinyxmlerror.o: libs/xml/tinyxmlerror.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tinyxmlparser.o: libs/xml/tinyxmlparser.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/Parameter.o: src/common/Parameter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SurgeError.o: src/common/SurgeError.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SurgePatch.o: src/common/SurgePatch.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SurgeStorage.o: src/common/SurgeStorage.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SurgeSynthesizer.o: src/common/SurgeSynthesizer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SurgeSynthesizerIO.o: src/common/SurgeSynthesizerIO.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/Tunings.o: src/common/Tunings.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/UserDefaults.o: src/common/UserDefaults.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/WavSupport.o: src/common/WavSupport.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/AdsrEnvelope.o: src/common/dsp/AdsrEnvelope.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/BiquadFilter.o: src/common/dsp/BiquadFilter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/BiquadFilterSSE2.o: src/common/dsp/BiquadFilterSSE2.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/DspUtilities.o: src/common/dsp/DspUtilities.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/FMOscillator.o: src/common/dsp/FMOscillator.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/FilterCoefficientMaker.o: src/common/dsp/FilterCoefficientMaker.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/LfoModulationSource.o: src/common/dsp/LfoModulationSource.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/Oscillator.o: src/common/dsp/Oscillator.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/QuadFilterChain.o: src/common/dsp/QuadFilterChain.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/QuadFilterUnit.o: src/common/dsp/QuadFilterUnit.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SampleAndHoldOscillator.o: src/common/dsp/SampleAndHoldOscillator.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SurgeSuperOscillator.o: src/common/dsp/SurgeSuperOscillator.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SurgeVoice.o: src/common/dsp/SurgeVoice.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/VectorizedSvfFilter.o: src/common/dsp/VectorizedSvfFilter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/Wavetable.o: src/common/dsp/Wavetable.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/WavetableOscillator.o: src/common/dsp/WavetableOscillator.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/WindowOscillator.o: src/common/dsp/WindowOscillator.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ConditionerEffect.o: src/common/dsp/effect/ConditionerEffect.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/DistortionEffect.o: src/common/dsp/effect/DistortionEffect.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/DualDelayEffect.o: src/common/dsp/effect/DualDelayEffect.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/Effect.o: src/common/dsp/effect/Effect.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/FreqshiftEffect.o: src/common/dsp/effect/FreqshiftEffect.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/PhaserEffect.o: src/common/dsp/effect/PhaserEffect.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/Reverb1Effect.o: src/common/dsp/effect/Reverb1Effect.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/Reverb2Effect.o: src/common/dsp/effect/Reverb2Effect.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/RotarySpeakerEffect.o: src/common/dsp/effect/RotarySpeakerEffect.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/VocoderEffect.o: src/common/dsp/effect/VocoderEffect.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CAboutBox.o: src/common/gui/CAboutBox.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CCursorHidingControl.o: src/common/gui/CCursorHidingControl.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CDIBitmap.o: src/common/gui/CDIBitmap.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CEffectSettings.o: src/common/gui/CEffectSettings.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CHSwitch2.o: src/common/gui/CHSwitch2.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CLFOGui.o: src/common/gui/CLFOGui.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CModulationSourceButton.o: src/common/gui/CModulationSourceButton.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CNumberField.o: src/common/gui/CNumberField.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/COscillatorDisplay.o: src/common/gui/COscillatorDisplay.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CPatchBrowser.o: src/common/gui/CPatchBrowser.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CScalableBitmap.o: src/common/gui/CScalableBitmap.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CSnapshotMenu.o: src/common/gui/CSnapshotMenu.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CStatusPanel.o: src/common/gui/CStatusPanel.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CSurgeSlider.o: src/common/gui/CSurgeSlider.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CSurgeVuMeter.o: src/common/gui/CSurgeVuMeter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CSwitchControl.o: src/common/gui/CSwitchControl.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/PopupEditorDialog.o: src/common/gui/PopupEditorDialog.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SurgeBitmaps.o: src/common/gui/SurgeBitmaps.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SurgeGUIEditor.o: src/common/gui/SurgeGUIEditor.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/precompiled.o: src/common/precompiled.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/CriticalSection.o: src/common/thread/CriticalSection.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/FpuState.o: src/common/util/FpuState.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/basic_dsp.o: src/common/vt_dsp/basic_dsp.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/halfratefilter.o: src/common/vt_dsp/halfratefilter.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/lipol.o: src/common/vt_dsp/lipol.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/macspecific.o: src/common/vt_dsp/macspecific.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ConfigurationXml.o: src/linux/ConfigurationXml.S
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/DisplayInfoLinux.o: src/linux/DisplayInfoLinux.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/LinuxVST3Helpers.o: src/linux/LinuxVST3Helpers.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/RuntimeFontLinux.o: src/linux/RuntimeFontLinux.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ScalablePiggy.o: src/linux/ScalablePiggy.S
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/UserInteractionsLinux.o: src/linux/UserInteractionsLinux.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/linux-aeffguieditor.o: src/linux/linux-aeffguieditor.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SurgeLv2Export.o: src/lv2/SurgeLv2Export.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SurgeLv2Ui.o: src/lv2/SurgeLv2Ui.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SurgeLv2Util.o: src/lv2/SurgeLv2Util.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SurgeLv2Vstgui.o: src/lv2/SurgeLv2Vstgui.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/SurgeLv2Wrapper.o: src/lv2/SurgeLv2Wrapper.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/genericoptionmenu.o: vstgui.surge/vstgui/lib/platform/common/genericoptionmenu.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/generictextedit.o: vstgui.surge/vstgui/lib/platform/common/generictextedit.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cairobitmap.o: vstgui.surge/vstgui/lib/platform/linux/cairobitmap.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cairocontext.o: vstgui.surge/vstgui/lib/platform/linux/cairocontext.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cairofont.o: vstgui.surge/vstgui/lib/platform/linux/cairofont.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cairogradient.o: vstgui.surge/vstgui/lib/platform/linux/cairogradient.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cairopath.o: vstgui.surge/vstgui/lib/platform/linux/cairopath.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/linuxstring.o: vstgui.surge/vstgui/lib/platform/linux/linuxstring.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x11fileselector.o: vstgui.surge/vstgui/lib/platform/linux/x11fileselector.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x11frame.o: vstgui.surge/vstgui/lib/platform/linux/x11frame.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x11platform.o: vstgui.surge/vstgui/lib/platform/linux/x11platform.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x11timer.o: vstgui.surge/vstgui/lib/platform/linux/x11timer.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/x11utils.o: vstgui.surge/vstgui/lib/platform/linux/x11utils.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/plugguieditor.o: vstgui.surge/vstgui/plugin-bindings/plugguieditor.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/vstgui.o: vstgui.surge/vstgui/vstgui.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif