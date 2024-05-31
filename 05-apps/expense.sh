#!/bin/bash
#user data will get sudo access
dnf install ansible -y
cd /tmp
git clone https://github.com/Ramanjulu321/expense-ansible-roles.git
cd expense-ansible-roles
ansible-playbook -i inventory.ini main.yaml -e component=backend -e login_password=ExpenseApp1
ansible-playbook -i inventory.ini main.yaml -e component=frontend
