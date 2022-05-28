#!yaml|github
# Our example autodeploy.sls
# Here we map a repository: example/salt
# and a reference: refs/heads/master
# to a state that we want to deploy: salt.repo
goINPUT-IT-Solutions/salt-hetzner:
  refs/heads/main:
    deploy_repo:
      local.state.sls:
        - tgt: role:salt-master
        - tgt_type: grain
        - args:
            - mods: salt.repo
