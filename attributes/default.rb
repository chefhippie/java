#
# Cookbook Name:: java
# Attributes:: default
#
# Copyright 2013-2014, Thomas Boerger <thomas@webhippie.de>
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

default["java"]["packages"] = value_for_platform_family(
  "debian" => %w(
    ca-certificates-java
    openjdk-7-jre
    openjdk-7-jre-headless
  ),
  "suse" => value_for_platform(
    "opensuse" => {
      "< 13.2" => %w(
        java-ca-certificates
        java-1_7_0-openjdk
        java-1_7_0-openjdk-devel
      ),
      "default" => %w(
        java-1_8_0-openjdk
        java-1_8_0-openjdk-devel
      )
    },
    "opensuseleap" => {
      "default" => %w(
        java-1_8_0-openjdk
        java-1_8_0-openjdk-devel
      )
    },
    "suse" => {
      "< 12" => %w(
        java-ca-certificates
        java-1_7_0-openjdk
        java-1_7_0-openjdk-devel
      ),
      "default" => %w(
        java-ca-certificates
        java-1_8_0-openjdk
        java-1_8_0-openjdk-devel
      )
    }
  )
)
