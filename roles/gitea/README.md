# Role Name

My personal gitea installation

## Requirements

None

## Role Variables

The following variables can be overriden:

- gitea_version
- gitea_user
- gitea_group

## Dependencies

None

## Example Playbook

```yaml
- hosts: servers
  tasks:
    - name: Importing gitea install.yml tasks
      ansible.builtin.import_role:
        name: gitea
        vars:
          gitea_version: 1.21
```

## License

BSD

## Author Information

None
