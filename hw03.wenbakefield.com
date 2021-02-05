server {
        listen 80;
        listen [::]:80;

        root /home/wenbakefield/www/hw03.wenbakefield.com;

        index index.html;

        server_name hw03.wenbakefield.com;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}
