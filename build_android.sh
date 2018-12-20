#!/bin/bash

#export NDK=/Users/zhangqing/Library/Android/android-ndk-r17-beta2
export NDK=/Users/zhangqing/NDK/magic
SYSROOT=$NDK/sysroot
TOOLCHAIN=$NDK/bin

#export SYSROOT=$NDK/platforms/android-21/arch-arm/
#export TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt/darwin-x86_64

CPU=arm
#PREFIX=/project/codec/jni
ADDI_CFLAGS="-marm"
#--enable-jni \

function build_one
{
./configure \
--prefix=../outbin6 \
--enable-shared \
--disable-static \
--disable-doc \
--disable-ffmpeg \
--disable-ffplay \
--disable-ffprobe \
--disable-ffserver \
--disable-doc \
--disable-symver \
--enable-small \
--enable-neon \
--enable-pthreads \
--enable-jni \
--disable-decoders \
--disable-avfilter \
--enable-mediacodec \
--enable-decoder=h264 \
--enable-decoder=h264_crystalhd \
--enable-decoder=h264_cuvid \
--enable-decoder=h264_mmal \
--enable-decoder=h264_qsv \
--enable-decoder=h264_rkmpp \
--enable-decoder=h264_v4l2m2m \
--enable-decoder=h264_vda \
--enable-decoder=h264_vdpau \
--enable-decoder=h264_mediacodec \
--enable-hwaccel=h264_mediacodec \
--cross-prefix=$TOOLCHAIN/arm-linux-androideabi- \
--target-os=android \
--arch=arm \
--enable-cross-compile \
--sysroot=$SYSROOT \
--extra-cflags=" -Os -fpic $ADDI_CFLAGS" \
--extra-ldflags="$ADDI_LDFLAGS" \
$ADDITIONAL_CONFIGURE_FLAG
}

build_one

#make -j8;make install

