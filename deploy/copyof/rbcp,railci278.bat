:Prepare date and temp folders
set ymd=%date:~12,2%%date:~4,2%%date:~7,2%&set dhms=%date:~12,2%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%
c: & md c:\temp\log\"%dhms%"  & cd c:\temp\log\"%dhms%"
:main
:goto skip1
rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 260



: test.... robocopy c:\var\share203\shiftcsd1p272  \\10.4.1.224\rt\srv\web\shiftcsd1p272  /l  /e /xo /COPY:DT /xd log /XD tmp /xd public/assets /XD shared /xf *.sqlite* /fft /dst /ndl /np /r:0 /w:9 /tee /log:"c:p272rbcp5-%dhms%-%random%"

robocopy c:\var\share203\railci278a  \\10.4.1.224\rt\srv\web\railci278a  /e /xo /COPY:DT /xd log /XD tmp /xd public/assets /XD shared /xf *.sqlite* /fft /dst /ndl /np /r:0 /w:9 /tee /log:"c:p278arbcp5-%dhms%-%random%"
timeout 1

:robocopy   C:\n\Dropbox\csd\dg2\knowledge-csd-dg\computer\rails-know\rail260\rail260 c:\var\share203\rail260 /l  /xo /e  /COPY:DT /xd log /XD tmp /XD shared /xf *.sqlite* /fft /dst  /ndl /np /r:0 /w:9 /tee /log:"c:rail260rbcp6-%dhms%-%random%"
timeout 1


rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 260












goto end
goto end
:...........offline items.....
goto :end


:robocopy  C:\n\Dropbox\csd\VCS-git\cif207  \\pmds-data\p2\xampp\htdocs\python\cif207  /e  /COPY:DT /xd templates_c  /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:pdatv206b,htd1-%dhms%-%random%"
:robocopy  C:\n\Dropbox\csd\VCS-git\pdb218  \\pmds-data\p2\xampp\htdocs\python\pdb218  /e  /COPY:DT /xd templates_c  /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:pdatv206b,htd1-%dhms%-%random%"

timeout 9

:

:robocopy \\pmds-data\p2\xampp\htdocs \\pmdsdata3\html     /e  /COPY:DT /xd templates_c /XD testnobackup /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:pdatv206b,htd1-%dhms%-%random%"

timeout 9

:off 2016-07-05_Tue_16.16-PM -   robocopy \\pmds-data\p2\xampp\htdocs C:\n\Dropbox\server\htdocs     /e  /COPY:DT /xd templates_c /XD testnobackup /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:pdatv206b,htdserv-%dhms%-%random%"

:robocopy \\pmds-data\p2\xampp\htdocs \\10.4.11.39\html     /e  /COPY:DT /xd templates_c /XD testnobackup /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:pdatv206b,htd2-%dhms%-%random%"

:robocopy \\pmds-data\p2\xampp\htdocs \\v206csd2\html     /e  /COPY:DT /xd templates_c /XD testnobackup /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:pdatv206b,htd-%dhms%-%random%"


:robocopy \\pmds-data\p2\xampp\htdocs C:\p2\vamp\htdocs     /e  /COPY:DT /xd templates_c /XD testnobackup /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:pdat,htd-%dhms%-%random%"
:robocopy  C:\p2\vamp\htdocs \\vamp206b\html   /mir  /COPY:DT /xd templates_c /XD testnobackup  /fft /dst  /ndl /np /r:0 /w:9 /tee /log:"c:pdat,htd2-%dhms%-%random%"
:robocopy C:\p2\vamp\htdocs \\vamp206b\html     /e  /COPY:DT /xd templates_c /XD testnobackup /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:pdatv206b,htd4-%dhms%-%random%"

rem ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 

:...........offline items.....
:skip1

subst z: /d
0f1 ot1 pr1 pr2 nf1 xf1
PING 127.0.0.1 -n 6 >NUL

:robocopy \\pmds-data\xampp\htdocs C:\copyof\pmds-data-htdocs     /mir /XD xx1 /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:pdat,ht-%dhms%-%random%"

:xcopy  h:\*.* e:\0\n\backupsdcard\*.* /s/e/d/h/i/f/c/k/y
robocopy "\\csd-server\Quotes\Aisin 2012 D423"     z:\xf1\copyof\quotes\Aisin-2012-D423   /mir /fft /dst /xo /ndl  /r:0 /w:0 /tee /log:"c:rb-q1-%dhms%-%random%"

robocopy C:\2h z:\xf1\copyof\2h-csd          /e    /xd zswege  /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:2h,tos7-%dhms%-%random%"
robocopy C:\2h z:\xf1\copyof\2h-csd,mir          /mir   /xd zswege  /fft /dst /xo /ndl /np /r:0 /w:9 /tee /log:"c:2hm,tos7-%dhms%-%random%"

:#######
:end
:pause
timeout 99
