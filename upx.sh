#!/bin/sh
/usr/local/bin/upx.out  --best libavcodec.so --android-shlib
/usr/local/bin/upx.out  --best libavfilter.so --android-shlib
/usr/local/bin/upx.out  --best libavformat.so --android-shlib
/usr/local/bin/upx.out  --best libavutil.so --android-shlib
/usr/local/bin/upx.out  --best libavdevice.so --android-shlib
/usr/local/bin/upx.out  --best libswscale.so --android-shlib
/usr/local/bin/upx.out  --best libswresample.so --android-shlib
