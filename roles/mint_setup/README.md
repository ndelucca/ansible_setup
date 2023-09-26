# Role Name

My personal linux environment

## Requirements

None

## Role Variables

The following variables must be set globally or passed on import:

- mint_setup_user
- mint_setup_group
- mint_setup_user_passwd
- mint_setup_user_email

## Dependencies

None

## Example Playbook

```yaml
- hosts: servers
  tasks:
  - name: Importing ndelucca.mint_setup git.yml tasks
    ansible.builtin.import_role:
    name: ndelucca.mint_setup
    vars:
    mint_setup_user: ndelucca
    mint_setup_group: ndelucca
    mint_setup_user_email: ndelucca@ndelucca.com
    mint_setup_user_passwd: ! vault | PASSWD_HASH
```

## License

BSD

## Author Information

None
