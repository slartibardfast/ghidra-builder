SET start_dir=%~dp0
SET start_dir=%start_dir:~0,-1%

build_command=%*
image=dukebarman/ghidra-builder

docker run -it -v %cd%:/files -w /files --user dockerbot:dockerbot --rm %image% /bin/bash