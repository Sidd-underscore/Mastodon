{ pkgs }: 
let nginxModified = pkgs.nginx.overrideAttrs (oldAttrs: rec {
        configureFlags = oldAttrs.configureFlags ++ [
            "--http-client-body-temp-path=/home/runner/Mastodon/cache/client_body"
            "--http-proxy-temp-path=/home/runner/Mastodon/cache/proxy"
            "--http-fastcgi-temp-path=/home/runner/Mastodon/cache/fastcgi"
            "--http-uwsgi-temp-path=/home/runner/Mastodon/cache/uwsgi"
            "--http-scgi-temp-path=/home/runner/Mastodon/cache/scgi"
         ];
    });

in {
    deps = [
        nginxModified
        pkgs.ruby
        pkgs.postgresql
        pkgs.shared-mime-info
        pkgs.nodejs
        pkgs.yarn
        pkgs.imagemagick
        pkgs.ffmpeg
        pkgs.libpqxx
        pkgs.libxml2
        pkgs.libxslt
        pkgs.file
        pkgs.git
        pkgs.gpp
        pkgs.protobuf
        pkgs.pkg-config
        pkgs.gcc
        pkgs.autoconf
        pkgs.bison
        pkgs.openssl
        pkgs.libyaml
        pkgs.readline
        pkgs.zlib
        pkgs.ncurses
        pkgs.libffi
        pkgs.gdbm
        pkgs.redis
        pkgs.certbot
        pkgs.libidn
        pkgs.icu
        pkgs.jemalloc
    ];

}