include:
  - http

mod_ssl:
  pkg.installed:
    - watch_in:
      - service: httpd
