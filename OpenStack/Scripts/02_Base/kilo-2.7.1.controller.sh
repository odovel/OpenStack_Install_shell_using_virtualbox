# !/bin/bash
# ============================================================================================
# Copyright (c) 2010-2012 OpenStack Foundation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# ============================================================================================
# Werite by: Jeon.sungwook 
# Create Date : 2015-06-02
# Update Date : 2015-06-02
#
# OS : CentOS-7-x86_64 1503-01
# OS : Ubuntu 14.04.02
#
# Text : OPENSTACK INSTALLATION GUIDE FOR RED HAT ENTERPRISE LINUX 7, CENTOS 7, AND FEDORA 21  - KILO
# Text : OPENSTACK INSTALLATION GUIDE FOR UBUNTU 14.04  - KILO
#
# This script is to be installed and run on OpenStack Kilo
# 
# Set environment and declare global variables
#
# ============================================================================================
# Chapter : 2. Basic environment
# Node : controller

# Load Env global variables
source ./kilo-perform-vars.common.sh
# Load Common functions
source ./kilo-function.00_common.sh
source ./kilo-function.02_base.sh

# 2.7 SQL database
#(1) To install and configure the database server
# (1-1) Install the packages:

func_install_mysql

# (1-2) Create and edit the /etc/my.cnf.d/mariadb_openstack.cnf file and complete the following actions:
func_configure_mysql $1

# (2) To finalize installation
# (2-1) Start the database service and configure it to start when the system boots:
func_start_mysql_service

