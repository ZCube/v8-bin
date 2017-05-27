if exist config.bat call config.bat
xcopy /hkyd /exclude:exclude_files.txt "%v8_dir%\out.gn\_x64.release\*.dll" bin\64\
xcopy /hkyd /exclude:exclude_files.txt "%v8_dir%\out.gn\_x64.release\*.bin" bin\64\
xcopy /hkyd /exclude:exclude_files.txt "%v8_dir%\out.gn\_x64.release\*.dat" bin\64\
xcopy /hkyd /exclude:exclude_files.txt "%v8_dir%\out.gn\_ia32.release\*.dll" bin\32\
xcopy /hkyd /exclude:exclude_files.txt "%v8_dir%\out.gn\_ia32.release\*.bin" bin\32\
xcopy /hkyd /exclude:exclude_files.txt "%v8_dir%\out.gn\_ia32.release\*.dat" bin\32\
xcopy /hkyd /exclude:exclude_files.txt "%v8_dir%\out.gn\_x64.release\*.lib" lib\64\
xcopy /hkyd /exclude:exclude_files.txt "%v8_dir%\out.gn\_ia32.release\*.lib" lib\32\

if not exist include mkdir include
xcopy /hrkysd "%v8_dir%\include\*" include\*
