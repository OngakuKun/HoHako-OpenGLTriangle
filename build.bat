@ECHO OFF
pushd "%~dp0"
REM ===     HELPER VARIABLES     ===
set ASSAMBLY=HelloWorld
set OUTDIR=bin\
set INTDIR=%OUTDIR%.int\
set PDBDIR=%OUTDIR%%ASSAMBLY%.pdb
set ASSAMBLYDIR=%OUTDIR%%ASSAMBLY%.exe

REM ===      PROGRAM PARTS       ===

set files=src\main.c

REM ===   BUILDDIRECTORY CHECK   ===
if not exist "%OUTDIR%" (
	goto :createDir
)

:cmd
REM ===    COMPILING ASSAMBLY    ===
	@ECHO =====   Compiling %ASSAMBLY%   =====
	CL /nologo %files% /Fd%PDBDIR% /Fo%INTDIR% /link %libs% /OUT:%ASSAMBLYDIR%
	goto :exit

:createDir
REM ===  CREATE BUILDDIRECTORY   ===
	mkdir %OUTDIR% %INTDIR%
	goto :cmd

:exit
REM ===      EXIT AND POPD       ===
	popd