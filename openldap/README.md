Role Name
=========

Configure LDAP over TLS to make connection be secure

Requirements
------------

Ansible 2.4.3.0 or higher.


Role Variables
--------------

The variables that can be passed to this role and a brief description about them are as follows

```
  domain: example.com         ## The domain prefix for ldap
  rootpw: password            ## This is the password for admin for openldap
  ssl: true                   ## Enable SSL for ldap Server
  country: US                 ## The self signed ssl certificate parameters
  state: orego
  location: portland
```


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

vagrant_ansible_playbook.yml

```
- hosts: server
  become: yes
  gather_facts: yes
  roles:
    - { role: openldap }
```

vagrant_ansible_inventory

```
[all:vars]
env=vagrant

[server]
127.0.0.1

[server:vars]
 ansible_port=2222
 ansible_user=vagrant
 ansible_private_key_file="./.vagrant/machines/default/virtualbox/private_key"
```

Disable ssl

```
ansible-playbook -i vagrant_ansible_inventory vagrant_ansible_playbook.yml --extra-vars "ssl=false"
```

License
-------

BSD/MIT
