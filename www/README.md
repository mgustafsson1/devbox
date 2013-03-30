This folder is the web root of the VM.
So simply put your web projects here. (Clone them with git)

Host setups
The webserver nginx is configured that it automatically maps your host to any folder inside this directory with the same name using the Laravel config. 
So http://devbox will map to devbox/public, http://myproject.dev will map to myproject.dev/public
