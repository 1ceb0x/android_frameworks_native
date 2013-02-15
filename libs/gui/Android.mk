LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	BitTube.cpp \
	BufferQueue.cpp \
	ConsumerBase.cpp \
	DisplayEventReceiver.cpp \
	IDisplayEventConnection.cpp \
	ISensorEventConnection.cpp \
	ISensorServer.cpp \
	ISurfaceTexture.cpp \
	Sensor.cpp \
	SensorEventQueue.cpp \
	SensorManager.cpp \
	SurfaceTexture.cpp \
	SurfaceTextureClient.cpp \
	ISurfaceComposer.cpp \
	ISurface.cpp \
	ISurfaceComposerClient.cpp \
	IGraphicBufferAlloc.cpp \
	LayerState.cpp \
	Surface.cpp \
	SurfaceComposerClient.cpp \
	DummyConsumer.cpp \
	CpuConsumer.cpp \
	BufferItemConsumer.cpp \
	GuiConfig.cpp

LOCAL_SHARED_LIBRARIES := \
	libbinder \
	libcutils \
	libEGL \
	libGLESv2 \
	libsync \
	libui \
	libutils \


LOCAL_MODULE:= libgui

include $(BUILD_SHARED_LIBRARY)

ifeq (,$(ONE_SHOT_MAKEFILE))
include $(call first-makefiles-under,$(LOCAL_PATH))
endif
