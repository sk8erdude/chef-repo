#
# Author:: Claudio Cesar Sanchez Tejeda <demonccc@gmail.com>
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# NOTES:
#       The server needs to have installed OMSA (omreport command) and SMBIOS 
# (smbios-sys-info command) applications in order to use this plugin.
#       Please remember also to add OS/dell.rb plugin (for example 
# linux/dell.rb). 

provides "dell"

require_plugin "virtualization"

if virtualization.nil? || virtualization[:role].nil? || virtualization[:role].eql?("host")

  dell Mash.new unless dell

  require_plugin "#{os}::dell"

end
