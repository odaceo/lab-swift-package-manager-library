# -*- mode: ruby -*-
# vi: set ft=ruby :

# Copyright Odaceo 2017
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/xenial64"
  
  config.vm.provision "shell", privileged: false, 
    path: "https://github.com/odaceo/script-ubuntu-system/raw/master/install.sh",
    args: ["vagrant-ubuntu-xenial-64", "en_US.UTF-8", "Europe/Zurich"]

  config.vm.provision "shell", privileged: false, 
    path: "https://github.com/odaceo/toolbox-ubuntu-swiftenv/raw/master/install.sh"

  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get install -y uuid-dev
  SHELL

end
