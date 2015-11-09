httpd:
  pkg:
    - installed
    {% if grains['os_family'] == 'Debian' %}
    - name: apache2
    {% endif %}
    - requires_in:
      - file: /etc/welcome.conf
  service:
    - running
    - watch:
      - file: /etc/welcome.conf

/etc/welcome.conf:
  file:
    - managed
    - source: salt://http/files/welcome.conf
