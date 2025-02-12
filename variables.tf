# Copyright (c) 2022 Canonical Ltd.
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

variable "openstack-channel" {
  description = "Operator channel for OpenStack deployment"
  type        = string
  default     = "2023.2/edge"
}

variable "mysql-channel" {
  description = "Operator channel for MySQL deployment"
  type        = string
  default     = "8.0/candidate"
}

variable "mysql-revision" {
  description = "Operator channel revision for MySQL deployment"
  type        = number
  default     = null
}

variable "mysql-config" {
  description = "Operator configs for MySQL deployment"
  type        = map(string)
  default     = {}
}

variable "mysql-router-channel" {
  description = "Operator channel for MySQL router deployment"
  default     = "8.0/candidate"
  type        = string
}

variable "traefik-channel" {
  description = "Operator channel for Traefik deployment"
  type        = string
  default     = "1.0/candidate"
}

variable "traefik-revision" {
  description = "Operator revision for Traefik deployment"
  type        = number
  default     = null
}

variable "traefik-config" {
  description = "Operator configs for Traefik deployment"
  type        = map(string)
  default     = {}
}

variable "rabbitmq-channel" {
  description = "Operator channel for RabbitMQ deployment"
  type        = string
  default     = "3.12/edge"
}

variable "rabbitmq-revision" {
  description = "Operator revision for RabbitMQ deployment"
  type        = number
  default     = null
}

variable "rabbitmq-config" {
  description = "Operator configs for RabbitMQ deployment"
  type        = map(string)
  default     = {}
}

variable "certificate-authority-channel" {
  description = "Operator channel for Certificate Authority deployment"
  type        = string
  default     = "latest/beta"
}

variable "certificate-authority-revision" {
  description = "Operator channel revision for Certificate Authority deployment"
  type        = number
  default     = null
}

variable "certificate-authority-config" {
  description = "Operator channel for Certificate Authority deployment"
  type        = map(string)
  default     = {}
}

variable "ovn-channel" {
  description = "Operator channel for OVN deployment"
  type        = string
  default     = "23.09/edge"
}

variable "ovn-central-channel" {
  description = "Operator channel for OVN Central deployment"
  type        = string
  default     = null
}

variable "ovn-central-revision" {
  description = "Operator channel revision for OVN Central deployment"
  type        = number
  default     = null
}

variable "ovn-central-config" {
  description = "Operator config for OVN Central deployment"
  type        = map(string)
  default     = {}
}

variable "ovn-relay-channel" {
  description = "Operator channel for OVN Relay deployment"
  type        = string
  default     = null
}

variable "ovn-relay-revision" {
  description = "Operator channel revision for OVN Relay deployment"
  type        = number
  default     = null
}

variable "ovn-relay-config" {
  description = "Operator config for OVN Relay deployment"
  type        = map(string)
  default     = {}
}

variable "keystone-channel" {
  description = "Operator channel for Keystone deployment"
  type        = string
  default     = null
}

variable "keystone-revision" {
  description = "Operator channel revision for Keystone deployment"
  type        = number
  default     = null
}

variable "keystone-config" {
  description = "Operator config for Keystone deployment"
  type        = map(string)
  default     = {}
}

variable "glance-channel" {
  description = "Operator channel for Glance deployment"
  type        = string
  default     = null
}

variable "glance-revision" {
  description = "Operator channel revision for Glance deployment"
  type        = number
  default     = null
}

variable "glance-config" {
  description = "Operator config for Glance deployment"
  type        = map(string)
  default     = {}
}

variable "nova-channel" {
  description = "Operator channel for Nova deployment"
  type        = string
  default     = null
}

variable "nova-revision" {
  description = "Operator channel revision for Nova deployment"
  type        = number
  default     = null
}

variable "nova-config" {
  description = "Operator config for Nova deployment"
  type        = map(string)
  default     = {}
}

variable "horizon-channel" {
  description = "Operator channel for Horizon deployment"
  type        = string
  default     = null
}

variable "horizon-revision" {
  description = "Operator channel revision for Horizon deployment"
  type        = number
  default     = null
}

variable "horizon-config" {
  description = "Operator config for Horizon deployment"
  type        = map(string)
  default     = {}
}

variable "neutron-channel" {
  description = "Operator channel for Neutron deployment"
  type        = string
  default     = null
}

variable "neutron-revision" {
  description = "Operator channel revision for Neutron deployment"
  type        = number
  default     = null
}

variable "neutron-config" {
  description = "Operator config for Neutron deployment"
  type        = map(string)
  default     = {}
}

variable "placement-channel" {
  description = "Operator channel for Placement deployment"
  type        = string
  default     = null
}

variable "placement-revision" {
  description = "Operator channel revision for Placement deployment"
  type        = number
  default     = null
}

variable "placement-config" {
  description = "Operator config for Placement deployment"
  type        = map(string)
  default     = {}
}

variable "cinder-channel" {
  description = "Operator channel for Cinder deployment"
  type        = string
  default     = null
}

variable "cinder-revision" {
  description = "Operator channel revision for Cinder deployment"
  type        = number
  default     = null
}

variable "cinder-config" {
  description = "Operator config for Cinder deployment"
  type        = map(string)
  default     = {}
}

variable "cinder-ceph-channel" {
  description = "Operator channel for Cinder Ceph deployment"
  type        = string
  default     = null
}

variable "cinder-ceph-revision" {
  description = "Operator channel revision for Cinder Ceph deployment"
  type        = number
  default     = null
}

variable "cinder-ceph-config" {
  description = "Operator config for Cinder Ceph deployment"
  type        = map(string)
  default     = {}
}

variable "model" {
  description = "Name of Juju model to use for deployment"
  type        = string
  default     = "openstack"
}

variable "cloud" {
  description = "Name of K8S cloud to use for deployment"
  type        = string
  default     = "microk8s"
}

# https://github.com/juju/terraform-provider-juju/issues/147
variable "credential" {
  description = "Name of credential to use for deployment"
  type        = string
  default     = ""
}

variable "config" {
  description = "Set configuration on model"
  type        = map(string)
  default     = {}
}

variable "enable-ceph" {
  description = "Enable Ceph integration"
  type        = bool
  default     = false
}

variable "ceph-offer-url" {
  description = "Offer URL from microceph app"
  type        = string
  default     = "admin/controller.microceph"
}

variable "ceph-osd-replication-count" {
  description = "Ceph OSD replication count to set on glance/cinder"
  type        = number
  default     = 1
}

variable "ha-scale" {
  description = "Scale of traditional HA deployments"
  # Need better name, because 1 is not HA, needs to encompass services like MySQL, RabbitMQ and OVN
  type    = number
  default = 1
}

variable "os-api-scale" {
  description = "Scale of OpenStack API service deployments"
  type        = number
  default     = 1
}

variable "ingress-scale" {
  description = "Scale of ingress deployment"
  type        = number
  default     = 1
}

variable "many-mysql" {
  description = "Enabling this will switch architecture from one global mysql to one per service"
  type        = bool
  default     = false
}

variable "enable-heat" {
  description = "Enable OpenStack Heat service"
  type        = bool
  default     = false
}

variable "heat-channel" {
  description = "Operator channel for Heat deployment"
  type        = string
  default     = null
}

variable "heat-revision" {
  description = "Operator channel revision for Heat deployment"
  type        = number
  default     = null
}

variable "heat-config" {
  description = "Operator config for Heat deployment"
  type        = map(string)
  default     = {}
}

variable "enable-telemetry" {
  description = "Enable OpenStack Telemetry services"
  type        = bool
  default     = false
}

variable "aodh-channel" {
  description = "Operator channel for Aodh deployment"
  type        = string
  default     = null
}

variable "aodh-revision" {
  description = "Operator channel revision for Aodh deployment"
  type        = number
  default     = null
}

variable "aodh-config" {
  description = "Operator config for Aodh deployment"
  type        = map(string)
  default     = {}
}

variable "gnocchi-channel" {
  description = "Operator channel for Gnocchi deployment"
  type        = string
  default     = null
}

variable "gnocchi-revision" {
  description = "Operator channel revision for Gnocchi deployment"
  type        = number
  default     = null
}

variable "gnocchi-config" {
  description = "Operator config for Gnocchi deployment"
  type        = map(string)
  default     = {}
}

variable "ceilometer-channel" {
  description = "Operator channel for Ceilometer deployment"
  type        = string
  default     = null
}

variable "ceilometer-revision" {
  description = "Operator channel revision for Ceilometer deployment"
  type        = number
  default     = null
}

variable "ceilometer-config" {
  description = "Operator config for Ceilometer deployment"
  type        = map(string)
  default     = {}
}

variable "openstack-exporter-channel" {
  description = "Operator channel for OpenStack Exporter deployment"
  type        = string
  default     = null
}

variable "openstack-exporter-revision" {
  description = "Operator channel revision for OpenStack Exporter deployment"
  type        = number
  default     = null
}

variable "openstack-exporter-config" {
  description = "Operator config for OpenStack Exporter deployment"
  type        = map(string)
  default     = {}
}

variable "prometheus-metrics-offer-url" {
  description = "Offer URL from prometheus-k8s:metrics-endpoint application"
  type        = string
  default     = ""
}

variable "grafana-dashboard-offer-url" {
  description = "Offer URL from grafana-k8s:grafana-dashboard application"
  type        = string
  default     = ""
}

variable "enable-octavia" {
  description = "Enable OpenStack Octavia service"
  type        = bool
  default     = false
}

variable "octavia-channel" {
  description = "Operator channel for Octavia deployment"
  type        = string
  default     = null
}

variable "octavia-revision" {
  description = "Operator channel revision for Octavia deployment"
  type        = number
  default     = null
}

variable "octavia-config" {
  description = "Operator config for Octavia deployment"
  type        = map(string)
  default     = {}
}

variable "enable-designate" {
  description = "Enable OpenStack Designate service"
  type        = bool
  default     = false
}

variable "bind-channel" {
  description = "Operator channel for Bind deployment"
  type        = string
  default     = "9/edge"
}

variable "bind-revision" {
  description = "Operator channel revision for Bind deployment"
  type        = number
  default     = null
}

variable "bind-config" {
  description = "Operator config for Bind deployment"
  type        = map(string)
  default     = {}
}

variable "designate-channel" {
  description = "Operator channel for Designate deployment"
  type        = string
  default     = null
}

variable "designate-revision" {
  description = "Operator channel revision for Designate deployment"
  type        = number
  default     = null
}

variable "designate-config" {
  description = "Operator config for Designate deployment"
  type        = map(string)
  default     = {}
}

variable "nameservers" {
  description = <<-EOT
    Space delimited list of nameservers. These are the nameservers that have been provided
    to the domain registrar in order to delegate the domain to Designate.
    e.g. "ns1.example.com. ns2.example.com."
  EOT
  type        = string
  default     = ""
}

variable "enable-vault" {
  description = "Enable Vault service"
  type        = bool
  default     = false
}

variable "vault-channel" {
  description = "Operator channel for Vault deployment"
  type        = string
  default     = "latest/edge"
}

variable "vault-revision" {
  description = "Operator channel revision for Vault deployment"
  type        = number
  default     = 61
}

variable "vault-config" {
  description = "Operator config for Vault deployment"
  type        = map(string)
  default     = {}
}

variable "enable-barbican" {
  description = "Enable OpenStack Barbican service"
  type        = bool
  default     = false
}

variable "barbican-channel" {
  description = "Operator channel for Barbican deployment"
  type        = string
  default     = null
}

variable "barbican-revision" {
  description = "Operator channel revision for Barbican deployment"
  type        = number
  default     = null
}

variable "barbican-config" {
  description = "Operator config for Barbican deployment"
  type        = map(string)
  default     = {}
}

variable "enable-magnum" {
  description = "Enable OpenStack Magnum service"
  type        = bool
  default     = false
}

variable "magnum-channel" {
  description = "Operator channel for Magnum deployment"
  type        = string
  default     = null
}

variable "magnum-revision" {
  description = "Operator channel revision for Magnum deployment"
  type        = number
  default     = null
}

variable "magnum-config" {
  description = "Operator config for Magnum deployment"
  type        = map(string)
  default     = {}
}

variable "ldap-channel" {
  description = "Operator channel for Keystone LDAP deployment"
  type        = string
  default     = "2023.2/edge"
}

variable "ldap-revision" {
  description = "Operator channel revision for Keystone LDAP deployment"
  type        = number
  default     = null
}

variable "ldap-apps" {
  description = "LDAP Apps and their config flags"
  type        = map(map(string))
  default     = {}
}

variable "horizon-plugins" {
  description = "List of horizon plugin to enable."
  type        = list(string)
  default     = []
}

variable "enable-validation" {
  description = "Enable Tempest deployment"
  type        = bool
  default     = false
}

variable "tempest-channel" {
  description = "Operator channel for Tempest deployment"
  type        = string
  default     = null
}

variable "tempest-revision" {
  description = "Operator channel revision for Tempest deployment"
  type        = number
  default     = null
}

variable "tempest-config" {
  description = "Operator config for Tempest deployment"
  type        = map(string)
  default     = {}
}

variable "grafana-agent-k8s-name" {
  description = "Operator name for Grafana Agent K8s deployment"
  type        = string
  default     = "grafana-agent-k8s"
}

variable "metrics-endpoint" {
  description = "Endpoint name for grafana-agent-k8s:metric_endpoint"
  type        = string
  default     = ""
}

variable "logging-provider" {
  description = "Endpoint name for grafana-agent-k8s:logging-provider"
  type        = string
  default     = ""
}

variable "grafana-dashboards-consumer" {
  description = "Endpoint name for grafana-agent-k8s:grafana-dashboards-consumer"
  type        = string
  default     = ""
}
