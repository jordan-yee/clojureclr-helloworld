# ClojureCLR Hello World

## Compiling
1. Open the *ClojureCLR Command Prompt*
2. Run **clojure.compile clojureclr-helloworld.core**

## Running the compiled program
1. Copy all .dll's from *.\clojure-clr-1.8.0-Release 4.0\Release 4.0\\* to the *.\build\\* directory. See the **ClojureCLR Source** section below.
2. Run **clojureclr-helloworld.core.exe**, which should be in the *.\build\\* directory after compiling (or other specified output directory).

## Running the REPL
1. Open *ClojureCLR Command Prompt*.
2. Run the REPL:  
   `clojure.main`

## ClojureCLR Source
1. Obtain the latest ClojureCLR from [Source Forge](https://sourceforge.net/projects/clojureclr/files/ "Source Forge").  
   *Note: The [ClojureCLR wiki](https://github.com/clojure/clojure-clr/wiki/Getting-binaries) tells of getting the ClojureCLR source from NuGet, but I was unable to get that version to work.* 
2. Unzip and copy the ClojureCLR release into your project directory. 
2. Copy the dll's to the *.\build* directory.  
   From PowerShell (SHIFT > right click in project directory > Open a PowerShell window here):  
   `cp -r '.\clojure-clr-1.8.0-Release 4.0\Release 4.0\*.dll' .\build\`

## ClojureCLR Command Prompt
This is based on the node.js command prompt.

This shortcut will open a command prompt with the necessary environmental variables for compiling your Clojure code.

The *clojureclrvars.bat* file is where these variables are defined.

The **Target** field in the *ClojureCLR Command Prompt* shortcut properties menu is where the path to the command prompt executable is, with the *clojureclrvars.bat* file set via the */k* switch.

The entire point of this cmd shortcut + bat file is to provide a per-project way of setting the necessary evironmental variables. There is probably a better way of doing this, but it beats setting project file paths manually each time you open a command prompt, or in your system environmental variables.

## Environment Variables
See environment varables set in *.\clojureclrvars.bat*.

### CLOJURE\_LOAD\_PATH
Set to the *.\src\\* directory and the directory containing Clojure.Main.exe and Clojure.Compile.exe (*.\clojure-clr-1.8.0-Release 4.0\Release 4.0\\*).

### CLOJURE\_COMPILE\_PATH
Set to your desired compilation output path (*.\build\).