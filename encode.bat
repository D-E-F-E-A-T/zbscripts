@echo off

REM fully qualified name %~f1
REM drive %~d1
REM path %~p1
REM filename %~n1
REM file extension %~x1
REM short filename %~sn1
REM short file extension %~sx1
REM drive and directory %~dp1
REM filename and extension %~nx1
REM echo %~dp1

set infolder=D:\temp\encode\
set outfolder=D:\temp\done\
set delfolder=D:\temp\delete\
REM set count=0

FOR %%A in (%infolder%*.*) do (
	REM set /a count+=1
	REM echo %%A
	REM %outfolder%%%~nxA
	NVEncC64 --avhw cuda -i "%%A" -c hevc --output-res 1280x720 --vbrhq 1000 --max-bitrate 2000 --output-depth 10 --profile main10 --lookahead 20 --audio-codec 1?aac --audio-bitrate 1?96 -o "%outfolder%%%~nxA"
	MOVE "%%A" "%delfolder%"
	REM DEL %delfolder%
	)
	
REM echo File count = %count%
Exit