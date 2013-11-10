######################################################################
# Automatically generated by qmake (2.01a) Tue Nov 15 17:49:49 2011
######################################################################

# Version number in <major>.<minor>.<patch> form
isEmpty(VERSION) {
        VERSION = 0.9.0
}

# Application name displayed to user
isEmpty(APPNAME) {
        APPNAME = "Wahjam"
}

# Organization name used for Qt settings
isEmpty(ORGNAME) {
        ORGNAME = "Wahjam Project"
}

# Organization domain displayed to user and used for Qt settings
isEmpty(ORGDOMAIN) {
        ORGDOMAIN = "wahjam.org"
}

# Qt client binary name
isEmpty(QTCLIENT_TARGET) {
	TARGET = wahjam
} else {
	TARGET = $$QTCLIENT_TARGET
}

DEFINES += "VERSION=\'\"$$VERSION\"\'"
DEFINES += "COMMIT_ID=\'\"$$system(git rev-parse HEAD)\"\'"
DEFINES += "APPNAME=\'\"$$APPNAME\"\'"
DEFINES += "ORGNAME=\'\"$$ORGNAME\"\'"
DEFINES += "ORGDOMAIN=\'\"$$ORGDOMAIN\"\'"
DEFINES += "JAMMR_API_URL=\'\"$$JAMMR_API_URL\"\'"
DEFINES += "JAMMR_REGISTER_URL=\'\"$$JAMMR_REGISTER_URL\"\'"
DEFINES += "JAMMR_UPGRADE_URL=\'\"$$JAMMR_UPGRADE_URL\"\'"
DEFINES += "JAMMR_UPDATE_URL=\'\"$$JAMMR_UPDATE_URL\"\'"
DEFINES += "JAMMR_DOWNLOAD_URL=\'\"$$JAMMR_DOWNLOAD_URL\"\'"

target.path = /bin
INSTALLS += target

TEMPLATE = app
DEPENDPATH += ..
INCLUDEPATH += ..
QT += network widgets

include(../common/libcommon.pri)

QMAKE_CXXFLAGS += -Wno-write-strings
CONFIG += link_pkgconfig
PKGCONFIG += ogg vorbis vorbisenc portaudio-2.0
LIBS += -lportmidi # does not use pkg-config

# On Ubuntu PortTime is separate from PortMidi
!isEmpty(USE_LIBPORTTIME) {
	LIBS += -lporttime
}

win32 {
	# Code in common/ does not use wide characters
	DEFINES -= UNICODE

	exists($${TARGET}.rc) {
		RC_FILE = $${TARGET}.rc
	}
}

mac {
	QMAKE_INFO_PLIST = Info.plist-$${TARGET}
	exists($${TARGET}.icns) {
		ICON = $${TARGET}.icns
	}
}

# Input
HEADERS += MainWindow.h
HEADERS += ConnectDialog.h
HEADERS += JammrConnectDialog.h
HEADERS += ChannelTreeWidget.h
HEADERS += SettingsDialog.h
HEADERS += PortAudioSettingsPage.h
HEADERS += PortMidiSettingsPage.h
HEADERS += ServerBrowser.h
HEADERS += MetronomeBar.h
HEADERS += ChatOutput.h
HEADERS += AddVSTPluginDialog.h
HEADERS += VSTSettingsPage.h
HEADERS += JammrLoginDialog.h
HEADERS += JammrServerBrowser.h
HEADERS += JammrAccessControlDialog.h
HEADERS += JammrUpdateChecker.h
HEADERS += NINJAMServerBrowser.h
HEADERS += logging.h
HEADERS += EffectPlugin.h
HEADERS += VSTPlugin.h
HEADERS += EffectProcessor.h
HEADERS += PortMidiStreamer.h

SOURCES += qtclient.cpp
SOURCES += MainWindow.cpp
SOURCES += ConnectDialog.cpp
SOURCES += JammrConnectDialog.cpp
SOURCES += ChannelTreeWidget.cpp
SOURCES += SettingsDialog.cpp
SOURCES += PortAudioSettingsPage.cpp
SOURCES += PortMidiSettingsPage.cpp
SOURCES += ServerBrowser.cpp
SOURCES += MetronomeBar.cpp
SOURCES += ChatOutput.cpp
SOURCES += AddVSTPluginDialog.cpp
SOURCES += VSTSettingsPage.cpp
SOURCES += JammrLoginDialog.cpp
SOURCES += JammrServerBrowser.cpp
SOURCES += JammrAccessControlDialog.cpp
SOURCES += JammrUpdateChecker.cpp
SOURCES += NINJAMServerBrowser.cpp
SOURCES += logging.cpp
SOURCES += VSTPlugin.cpp
SOURCES += EffectProcessor.cpp
SOURCES += PortMidiStreamer.cpp
