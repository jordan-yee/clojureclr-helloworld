@echo off

rem Ensure Clojure exe's are first in the PATH
set "PATH=%~dp0clojure-clr-1.8.0-Release 4.0\Release 4.0\;%~dp0build;%PATH%"
set "CLOJURE_LOAD_PATH=%~dp0src;%~dp0clojure-clr-1.8.0-Release 4.0\Release 4.0\"
set "CLOJURE_COMPILE_PATH=%~dp0build"

rem Print message.
echo Your environment has been set up for using ClojureCLR.