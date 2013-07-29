rm -rf ..\..\release\*
mkdir ..\..\release

cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\bin\QtCore4.dll ..\..\release
cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\bin\QtGui4.dll ..\..\release
cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\bin\QtNetwork4.dll ..\..\release
cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\bin\QtXml4.dll ..\..\release
cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\bin\QtOpenGL4.dll ..\..\release
cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\bin\QtWebKit4.dll ..\..\release
cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\bin\QtXmlPatterns4.dll ..\..\release
cp C:\Qt\1.2.1\mingw\bin\mingwm10.dll ..\..\release
cp C:\Qt\1.2.1\mingw\bin\libgcc_s_dw2-1.dll ..\..\release
cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\bin\libeay32.dll ..\..\release
cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\bin\libssl32.dll ..\..\release
cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\bin\ssleay32.dll ..\..\release

cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\lib\qscintilla2.dll ..\..\release

cp ..\libgid\release\gid.dll ..\..\release
cp ..\libgfile\release\gfile.dll ..\..\release
cp ..\lua\release\lua.dll ..\..\release
cp ..\libgideros\release\gideros.dll ..\..\release
cp ..\libpystring\release\pystring.dll ..\..\release

mkdir ..\..\release\imageformats
cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\plugins\imageformats\qjpeg4.dll ..\..\release\imageformats

cp ..\libgid\external\zlib-1.2.8\build\mingw\zlib.dll ..\..\release
cp ..\libgid\external\glew-1.9.0\lib\mingw\glew32.dll ..\..\release
cp ..\libgid\external\openal-soft-1.13\build\mingw\OpenAL32.dll ..\..\release
cp ..\libgid\external\pthreads-w32-2-8-0-release\Pre-built.2\lib\pthreadGC2.dll ..\..\release

cp ..\ui\release\GiderosStudio.exe ..\..\release
cp ..\player\release\GiderosPlayer.exe ..\..\release
cp ..\texturepacker\release\GiderosTexturePacker.exe ..\..\release
cp ..\fontcreator\release\GiderosFontCreator.exe ..\..\release
cp ..\licensemanager\release\GiderosLicenseManager.exe ..\..\release

rem svn export ..\ui\Resources ..\..\release\Resources
rm -rf ..\..\temp
hg archive -I ..\ui\Resources ..\..\temp
mv ..\..\temp\ui\Resources ..\..\release

rem svn export ..\ui\Tools ..\..\release\Tools
rm -rf ..\..\temp
hg archive -I ..\ui\Tools ..\..\temp
mv ..\..\temp\ui\Tools ..\..\release

mkdir ..\..\release\Templates

rem svn export ..\ui\Templates\Eclipse ..\..\release\Templates\Eclipse
rm -rf ..\..\temp
hg archive -I ..\ui\Templates\Eclipse ..\..\temp
mv ..\..\temp\ui\Templates\Eclipse ..\..\release\Templates

rem svn export ..\ui\Templates\Xcode4 ..\..\release\Templates\Xcode4
rm -rf ..\..\temp
hg archive -I ..\ui\Templates\Xcode4 ..\..\temp
mv ..\..\temp\ui\Templates\Xcode4 ..\..\release\Templates

mkdir "..\..\release\Templates\Eclipse\Android Template\assets"
mkdir "..\..\release\Templates\Eclipse\Android Template\gen"
mkdir "..\..\release\Templates\Eclipse\Android Template\res\layout"
mkdir "..\..\release\Templates\Xcode4\iOS Template\iOS Template\assets"

rem svn export ..\samplecode ..\..\release\Examples
rm -rf ..\..\temp
hg archive -I ..\samplecode ..\..\temp
mv ..\..\temp\samplecode ..\..\release\Examples

rem svn export ..\ios\GiderosiOSPlayer ..\..\release\GiderosiOSPlayer
rm -rf ..\..\temp
hg archive -I ..\ios\GiderosiOSPlayer ..\..\temp
mv ..\..\temp\ios\GiderosiOSPlayer ..\..\release

cp ..\gdrdeamon\release\gdrdeamon.exe ..\..\release\Tools
cp ..\gdrbridge\release\gdrbridge.exe ..\..\release\Tools
cp ..\gdrexport\release\gdrexport.exe ..\..\release\Tools
cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\bin\QtCore4.dll ..\..\release\Tools
cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\bin\QtNetwork4.dll ..\..\release\Tools
cp C:\Qt\1.2.1\Desktop\Qt\4.8.1\mingw\bin\QtXml4.dll ..\..\release\Tools
cp C:\Qt\1.2.1\mingw\bin\mingwm10.dll ..\..\release\Tools
cp C:\Qt\1.2.1\mingw\bin\libgcc_s_dw2-1.dll ..\..\release\Tools

copy "..\ui\Templates\Xcode4\iOS Template\iOS Template\giderosapi.h" "..\..\release\Templates\Xcode4\iOS Template\iOS Template"
copy "..\ui\Templates\Xcode4\iOS Template\iOS Template\libgideros.a" "..\..\release\Templates\Xcode4\iOS Template\iOS Template"
copy "..\ui\Templates\Xcode4\iOS Template\iOS Template\giderosapi.h" "..\..\release\GiderosiOSPlayer\GiderosiOSPlayer"
copy "..\ui\Templates\Xcode4\iOS Template\iOS Template\libgideros.a" "..\..\release\GiderosiOSPlayer\GiderosiOSPlayer"

mkdir ..\..\release\GiderosiOSPlayer\GiderosiOSPlayer\Plugins
copy ..\Sdk\include\*.h                                                        ..\..\release\GiderosiOSPlayer\GiderosiOSPlayer\Plugins
copy "..\plugins\Game Kit\source\iOS\gamekit.mm"                               ..\..\release\GiderosiOSPlayer\GiderosiOSPlayer\Plugins
copy "..\plugins\Store Kit\source\iOS\storekit.mm"                             ..\..\release\GiderosiOSPlayer\GiderosiOSPlayer\Plugins
copy "..\plugins\iAd\source\iOS\iad.mm"                                        ..\..\release\GiderosiOSPlayer\GiderosiOSPlayer\Plugins
copy ..\plugins\LuaSQLite3\source\lsqlite3.c                                   ..\..\release\GiderosiOSPlayer\GiderosiOSPlayer\Plugins
copy ..\plugins\LuaSQLite3\source\lsqlite3_stub.cpp                            ..\..\release\GiderosiOSPlayer\GiderosiOSPlayer\Plugins
copy ..\plugins\LuaSocket\source\luasocket_stub.cpp                            ..\..\release\GiderosiOSPlayer\GiderosiOSPlayer\Plugins
copy "..\ui\Templates\Xcode4\iOS Template\iOS Template\Plugins\libluasocket.a" ..\..\release\GiderosiOSPlayer\GiderosiOSPlayer\Plugins
copy ..\plugins\LuaFileSystem\source\lfs.h                                     ..\..\release\GiderosiOSPlayer\GiderosiOSPlayer\Plugins
copy ..\plugins\LuaFileSystem\source\lfs.c                                     ..\..\release\GiderosiOSPlayer\GiderosiOSPlayer\Plugins
copy ..\plugins\LuaFileSystem\source\lfs_stub.cpp                              ..\..\release\GiderosiOSPlayer\GiderosiOSPlayer\Plugins
mkdir "..\..\release\Templates\Xcode4\iOS Template\iOS Template\Plugins"
copy ..\..\release\GiderosiOSPlayer\GiderosiOSPlayer\Plugins\* "..\..\release\Templates\Xcode4\iOS Template\iOS Template\Plugins"

cp ..\android\GiderosAndroidPlayer\gideros.jar "..\..\release\Templates\Eclipse\Android Template"
mkdir "..\..\release\Templates\Eclipse\Android Template\jni"
cp ..\android\lib\jni\Application.mk "..\..\release\Templates\Eclipse\Android Template\jni"
cp -R ..\android\build\libs "..\..\release\Templates\Eclipse\Android Template"
cp ..\plugins\LuaSocket\source\libs\armeabi\libluasocket.so "..\..\release\Templates\Eclipse\Android Template\libs\armeabi"
cp ..\plugins\LuaSocket\source\libs\armeabi-v7a\libluasocket.so "..\..\release\Templates\Eclipse\Android Template\libs\armeabi-v7a"
cp ..\plugins\LuaFileSystem\source\libs\armeabi\liblfs.so "..\..\release\Templates\Eclipse\Android Template\libs\armeabi"
cp ..\plugins\LuaFileSystem\source\libs\armeabi-v7a\liblfs.so "..\..\release\Templates\Eclipse\Android Template\libs\armeabi-v7a"
cp "..\plugins\Google Billing\source\Android\libs\armeabi\libggooglebilling.so" "..\..\release\Templates\Eclipse\Android Template\libs\armeabi"
cp "..\plugins\Google Billing\source\Android\libs\armeabi-v7a\libggooglebilling.so" "..\..\release\Templates\Eclipse\Android Template\libs\armeabi-v7a"
cp ..\plugins\LuaSQLite3\source\libs\armeabi\liblsqlite3.so "..\..\release\Templates\Eclipse\Android Template\libs\armeabi"
cp ..\plugins\LuaSQLite3\source\libs\armeabi-v7a\liblsqlite3.so "..\..\release\Templates\Eclipse\Android Template\libs\armeabi-v7a"

rm -rf ..\..\temp
rem mkdir ..\..\temp
rem svn export "..\plugins\Google Billing\source\Android\com" ..\..\temp\com
hg archive -I "..\plugins\Google Billing\source\Android\com" ..\..\temp
cp -R "..\..\temp\plugins\Google Billing\source\Android\com" "..\..\release\Templates\Eclipse\Android Template\src"
cp -R "..\..\temp\plugins\Google Billing\source\Android\com" ..\android\GiderosAndroidPlayer\src

rm -rf ..\android\GiderosAndroidPlayer\libs
cp -R "..\..\release\Templates\Eclipse\Android Template\libs" ..\android\GiderosAndroidPlayer

cd ..\android\GiderosAndroidPlayer
call ant debug
mv bin\GiderosAndroidPlayer-debug.apk ..\..\..\release\GiderosAndroidPlayer.apk
cd ..\..\scripts


cd ..\..\release
zip -r GiderosiOSPlayer.zip GiderosiOSPlayer
rm -rf GiderosiOSPlayer
cd ..\gideros\scripts

rem svn export ..\doc ..\..\release\Documentation
rm -rf ..\..\temp
hg archive -I  ..\doc ..\..\temp
mv ..\..\temp\doc ..\..\release\Documentation

cp ..\licenses.txt ..\..\release\licenses.txt

cp -R ..\Sdk ..\..\release

rem svn export ..\plugins "..\..\release\All Plugins"
rm -rf ..\..\temp
hg archive -I ..\plugins ..\..\temp
mv ..\..\temp\plugins "..\..\release\All Plugins"
mkdir "..\..\release\All Plugins\BitOp\bin"
mkdir "..\..\release\All Plugins\Facebook\bin"
mkdir "..\..\release\All Plugins\Flurry\bin"
mkdir "..\..\release\All Plugins\Game Kit\bin"
mkdir "..\..\release\All Plugins\Google Billing\bin"
mkdir "..\..\release\All Plugins\iAd\bin"
mkdir "..\..\release\All Plugins\LPeg\bin"
mkdir "..\..\release\All Plugins\LuaFileSystem\bin"
mkdir "..\..\release\All Plugins\LuaSocket\bin"
mkdir "..\..\release\All Plugins\LuaSQLite3\bin"
mkdir "..\..\release\All Plugins\Microphone\bin"
mkdir "..\..\release\All Plugins\Store Kit\bin"
mkdir "..\..\release\All Plugins\BitOp\bin\Windows"
cp ..\plugins\BitOp\source\release\bitop.dll "..\..\release\All Plugins\BitOp\bin\Windows"
mkdir "..\..\release\All Plugins\LuaSQLite3\bin\Windows"
cp "..\plugins\LuaSQLite3\source\release\lsqlite3.dll" "..\..\release\All Plugins\LuaSQLite3\bin\Windows"
mkdir "..\..\release\All Plugins\LuaSocket\bin\Windows"
cp "..\plugins\LuaSocket\source\release\luasocket.dll" "..\..\release\All Plugins\LuaSocket\bin\Windows"
mkdir "..\..\release\All Plugins\LuaFileSystem\bin\Windows"
cp "..\plugins\LuaFileSystem\source\release\lfs.dll" "..\..\release\All Plugins\LuaFileSystem\bin\Windows"
mkdir "..\..\release\All Plugins\LPeg\bin\Windows"
cp "..\plugins\LPeg\source\release\lpeg.dll" "..\..\release\All Plugins\LPeg\bin\Windows"
mkdir "..\..\release\All Plugins\Microphone\bin\Windows"
cp "..\plugins\Microphone\source\release\microphone.dll" "..\..\release\All Plugins\Microphone\bin\Windows"


mkdir "..\..\release\All Plugins\BitOp\bin\Android"
mkdir "..\..\release\All Plugins\BitOp\bin\Android\armeabi"
mkdir "..\..\release\All Plugins\BitOp\bin\Android\armeabi-v7a"
cp ..\plugins\BitOp\source\libs\armeabi\libbitop.so "..\..\release\All Plugins\BitOp\bin\Android\armeabi" 
cp ..\plugins\BitOp\source\libs\armeabi-v7a\libbitop.so "..\..\release\All Plugins\BitOp\bin\Android\armeabi-v7a" 

mkdir "..\..\release\All Plugins\LuaSocket\bin\Android"
mkdir "..\..\release\All Plugins\LuaSocket\bin\Android\armeabi"
mkdir "..\..\release\All Plugins\LuaSocket\bin\Android\armeabi-v7a"
cp ..\plugins\LuaSocket\source\libs\armeabi\libluasocket.so "..\..\release\All Plugins\LuaSocket\bin\Android\armeabi" 
cp ..\plugins\LuaSocket\source\libs\armeabi-v7a\libluasocket.so "..\..\release\All Plugins\LuaSocket\bin\Android\armeabi-v7a" 

mkdir "..\..\release\All Plugins\LPeg\bin\Android"
mkdir "..\..\release\All Plugins\LPeg\bin\Android\armeabi"
mkdir "..\..\release\All Plugins\LPeg\bin\Android\armeabi-v7a"
cp ..\plugins\LPeg\source\libs\armeabi\liblpeg.so "..\..\release\All Plugins\LPeg\bin\Android\armeabi" 
cp ..\plugins\LPeg\source\libs\armeabi-v7a\liblpeg.so "..\..\release\All Plugins\LPeg\bin\Android\armeabi-v7a" 

mkdir "..\..\release\All Plugins\LuaFileSystem\bin\Android"
mkdir "..\..\release\All Plugins\LuaFileSystem\bin\Android\armeabi"
mkdir "..\..\release\All Plugins\LuaFileSystem\bin\Android\armeabi-v7a"
cp ..\plugins\LuaFileSystem\source\libs\armeabi\liblfs.so "..\..\release\All Plugins\LuaFileSystem\bin\Android\armeabi" 
cp ..\plugins\LuaFileSystem\source\libs\armeabi-v7a\liblfs.so "..\..\release\All Plugins\LuaFileSystem\bin\Android\armeabi-v7a" 

mkdir "..\..\release\All Plugins\LuaSQLite3\bin\Android"
mkdir "..\..\release\All Plugins\LuaSQLite3\bin\Android\armeabi"
mkdir "..\..\release\All Plugins\LuaSQLite3\bin\Android\armeabi-v7a"
cp ..\plugins\LuaSQLite3\source\libs\armeabi\liblsqlite3.so "..\..\release\All Plugins\LuaSQLite3\bin\Android\armeabi" 
cp ..\plugins\LuaSQLite3\source\libs\armeabi-v7a\liblsqlite3.so "..\..\release\All Plugins\LuaSQLite3\bin\Android\armeabi-v7a"

mkdir "..\..\release\All Plugins\Microphone\bin\Android"
mkdir "..\..\release\All Plugins\Microphone\bin\Android\armeabi"
mkdir "..\..\release\All Plugins\Microphone\bin\Android\armeabi-v7a"
cp ..\plugins\Microphone\source\libs\armeabi\libmicrophone.so "..\..\release\All Plugins\Microphone\bin\Android\armeabi" 
cp ..\plugins\Microphone\source\libs\armeabi-v7a\libmicrophone.so "..\..\release\All Plugins\Microphone\bin\Android\armeabi-v7a"


mkdir ..\..\release\Plugins
cp ..\plugins\LuaSQLite3\source\release\lsqlite3.dll ..\..\release\Plugins
cp ..\plugins\LuaSocket\source\release\luasocket.dll ..\..\release\Plugins
cp ..\plugins\LuaFileSystem\source\release\lfs.dll ..\..\release\Plugins
cp ..\plugins\Microphone\source\release\microphone.dll ..\..\release\Plugins


cd ..\..
rm -rf release2
mkdir release2
cp -R release\* release2
rm -rf release\*
cp -R release2\* release
rm -rf release2
cd gideros\scripts
