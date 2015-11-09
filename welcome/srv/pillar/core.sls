foo: foo2
{% if grains['id'] == 'node1.example.com' %}
nova:
  logdir: /srv/selinux_is_mad/log
password: hunter7
{% endif %}
