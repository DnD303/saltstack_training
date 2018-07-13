install_apache:
 pkg.installed:
  - pkgs:
    - httpd

configuration_index:
 file.managed:
  - name: /var/www/html/index.html
  - user: apache
  - group: apache
  - mode: 644
  - source: salt://apache/templates/index.html

enable_httpd:
 service.running:
  - name: httpd
  - enable: True
