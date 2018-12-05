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
  country: US                 ## The self signed ssl certificate parameters
  state: orego
  location: portland
```


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
