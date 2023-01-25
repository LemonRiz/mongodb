# Provisioning project

What did you need to do to provision a vm to run mongo db?
Set up vagrant on a host machine, create a Vagrantfile and used a script.sh to automatically install MongoDB. Used an image .iso of ubuntu to run a linux VM.

What did you need to do to provision a vm to:

- Run the node.js application?
  Run the app via node /script.js at the end of the script.sh

- Use the `nology.training` alias?
  Add some options of ServerName and ServerAlias to the nology-proxy.conf

- Use apache server to dirent traffic to a given port?

Installed Apache server and copied the nology-proxy into the config file in apache2/sites-available

- How are you able to pass in the DB connection string?

---

## General Environment Questions

- What are development environments?
  A development environment is for developers to change things without affecting the live environment which is facing the end user.

- How do they relate to an application?
  If an application is customer facing, modifying the application on the live environment would be problematic. Using the development environment allows you to see the changes you've made without affecting users.

### Virtual machines

- What is a virtual machine?
  A virtual computer that uses software to emulate another PC without using a physical PC.
- What does it allow you to do?
  Virtual machines can be used for many things, such as trying out a new OS or running programs that are incompatible with your physical PC.
- How have you used one?
  We ran servers using apache.

### Vagrant

- What is vagrant?
  Vagrant is an open-source tool for building and managing virtual machines.
- What is a `VagrantFile`?
  A file in the Ruby programming language that provides vagrant with instructions to create or destroy new vagrant machines.

#### CLI commands

| Command   | What does it do?                                                                                                  | When did you use it?                                                                  |
| --------- | ----------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| reload    | Effectively running a halt then running up, used for modifying the vagrant files and reloading the configureation | If the vagrantfile is modified, reload should be used.                                |
| up        | This command creates and configures a virtual machine according to your vagrant file                              | To start up my VMs                                                                    |
| provision | Runs the shell command scripts from the script.sh                                                                 | Used after vagrant machine has been initialised or the shell scripts have been edited |
| destroy   | Stops a vagrant machine that's running and destroys any resources created during the machine creation             | To completely restart your virtual machine                                            |
| suspend   | Suspends the machine, effectively putting it to sleep                                                             | When you need to work on the VM but don't need it running in the background           |
| ssh       | Lets you connect to your virtual machine.                                                                         | We used it to modify config files for apache - so used for files specific to the VM   |

#### Provisioning

- What is Provisioning in relation to Vagrant?
  Provisioning allows you to automatically install software, change configurations, and modify other options during the vagrant up process.

---
