install_apache:
  pkg.installed:
    - pkgs:
      - httpd
	  
configuration_apache:
  file.managed:
    - name: /var/www/html/indel.html/indel
	- user: apache
	- group: apache
	- mode: 644
	- source: salt://apache/templates/index.html/indel
	
run_httpd:
  service.running:
	- enable: true
    - name: httpd