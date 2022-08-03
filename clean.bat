@ECHO OFF
pushd "%~dp0"

REM ===     HELPER VARIABLES     ===
    set ASSAMBLY=HelloWorld
    set OUTDIR=bin\

REM ===   CLEAN FILES AND DIRS   ===
    del /s %OUTDIR%*.obj %OUTDIR%*.exe %OUTDIR%*.pdb %OUTDIR%*.ilk %OUTDIR%*.lib %OUTDIR%*.dll
    rmdir %INTDIR% %OUTDIR%

REM ===      EXIT AND POPD       ===
    popd