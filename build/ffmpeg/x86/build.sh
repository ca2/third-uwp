



function build()
{

    cd ffmpeg

mkdir -p Output/Windows10/x86

cd Output/Windows10/x86

../../../configure \
--toolchain=msvc \
--disable-programs \
--disable-d3d11va \
--disable-dxva2 \
--arch=x86 \
--enable-shared \
--enable-cross-compile \
--target-os=win32 \
--extra-cflags="-MD -DWINAPI_FAMILY=WINAPI_FAMILY_APP -D_WIN32_WINNT=0x0A00" \
--extra-ldflags="-APPCONTAINER WindowsApp.lib" \
--prefix=/c/archive/nodetime-winrt/Win32/stage

make -j8

make install

}



build