SET start_dir=%~dp0
SET start_dir=%start_dir:~0,-1%
SET image=dukebarman/ghidra-builder

docker build --pull -t %image% -f %start_dir%\Dockerfile %start_dir%
