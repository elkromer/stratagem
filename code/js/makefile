ZIP=zip.exe
TAR=\Cygwin\bin\tar.exe

all: prep obfus pkg
  @echo done!

prep:
# Bring over the typescript compiler
  -mkdir node_modules
  xcopy /S /Q /Y \Libs\node\tools\node_modules\* node_modules

ts:
  node_modules\.bin\tsc -p tsconfig.json

webpack: ts
  node_modules\.bin\webpack --output-library-target commonjs-module --mode production --target node tsout/mylib.js  -o webpack/mylib.js

obfus: webpack
  node_modules\.bin\pjsd -c pjsd.json -p webpack/mylib.js obfus/mylib.js

pkg:
  -mkdir rklib
  xcopy /S /Q /Y obfus\*.js rklib
  copy package.json rklib
  $(TAR) czf rklib.tar.gz rklib

clean:
  -del rklib.tar.gz
  -del package-lock.json
  -rmdir /q /s node_modules
  -rmdir /q /s webpack
  -rmdir /q /s obfus
  -rmdir /q /s tsout
  -rmdir /q /s rklib
