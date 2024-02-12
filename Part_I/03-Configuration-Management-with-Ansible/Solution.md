## Steps to Perform this Project

- This project is done locally with virtual machines.

### Step 1: Install Ansible

- [Offical Doc](https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-specific-operating-systems)
- Verify `ansible --version`

### Step 2: Set Up SSH Connectivity

1. Generate SSH key pair `ssh-keygen -t rsa -b 4096`.
2. Copy the public key to all the managed servers `ssh-copy-id -i ansible-key.pub lion@192.168.0.12`, give your password. Done

### Step 3: Create Project Directory and Files

1. Create a directory for your Ansible project: `mkdir ansible_project`
2. Create an inventory file to specify managed servers `vim inventory.ini`.

   - Inside `inventory.ini` file.

     - Add your server IP addresses or hostnames:

       ```ini
       [servers]
       server_1 ansible_host=192.168.0.12 ansible_user=lion

       [servers:vars]
       ansible_ssh_private_key_file=/home/tiger/.ssh/ansible-key
       ```

### Step 4: Create palybook

1. Create palybook `setup.yml`

2. Add tasks to the playbook

   ```yaml
   ---
   - name: Nginx Setup
   hosts: servers
   become: yes

   tasks:
       - name: Install Nginx
       apt:
           name: nginx
           state: latest

       - name: Start Service
       service:
           name: nginx
           state: started
           enabled: yes
   ```

3. Execute this command `ansible-playbook -i inventory.ini setup.yml --ask-become-pass`

### Step 4: Completed

- In your browser check `http://192.168.0.12/`, nginx will be running.

---
