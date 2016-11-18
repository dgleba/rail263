# How to deploy rail253y

## Capistrano

### Environments

* **staging** is deployed from the `develop` branch.
* **production** is deployed from the `master` branch.

### Prerequisites

Capistrano runs on your local machine and uses SSH to perform the deployment on the remote server. Therefore:

* The Capistrano gem must be installed (see `README.md` for project setup instructions).
* You must have SSH access to the production/staging server.
* Your SSH key must be installed on the server in `~/.ssh/authorized_keys`.
* You must have SSH access to Git repository (using your SSH key).

### Performing a deployment

For the `staging` environment you will run the following:

```
bundle exec cap staging deploy
```

### Other capistrano helpers

```
# Start a rails console without ssh-ing to the remote server
bundle exec cap staging rails:console

# Pull the remote database to your local machine
bundle exec cap staging db:pull

# Pull the remote assets to your local machine
bundle exec cap staging assets:pull
```
