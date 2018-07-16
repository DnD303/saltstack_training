user_mo_ali:
 user.present:
  - fullname: Mo Ali
  - name: mo.ali
  - uid: 10000
  - home: /home/mo.ali
  - shell: /bin/bash
  - gid_from_name: True

sshkey_mo_ali:
 ssh_auth.present:
  - name: mo.ali
  - user: mo.ali
  - source: salt://users/keys/mo_ali.pub
