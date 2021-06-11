#
#  vThunder configs for TKC demo
#
#  John D. Allen
#  Global Solutions Architect - Cloud, IOT, & Automation
#  A10 Networks, Inc.
#  Apache v2.0 License applies.
#  June, 2021
#

# terraform {
#   required_providers {
#     thunder = {
#       source = "a10networks/thunder"
#       version = "0.4.24"
#     }
#   }
# }

provider "thunder" {
  address  = var.thunder_ip_address
  username = var.thunder_username
  password = var.thunder_password
}

resource "thunder_slb_template_virtual_server" "bw-control" {
  name = "bw-control"
  conn_limit = 2
  conn_rate_limit = 2
#  disable_when_all_port_down = true
}

resource "thunder_virtual_server" "ws-vip" {
  depends_on = [
    thunder_slb_template_virtual_server.bw-control
  ]
  name                    = "ws-vip"
  ip_address              = var.thunder_vip
  template_virtual_server = "bw-control"
  port_list {
    port_number = 80
    protocol    = "http"
    aflex_scripts {
      aflex = "http-error-status-log"
    }
  }
}

resource "thunder_virtual_server" "ws-vip-2" {
  depends_on = [
    thunder_slb_template_virtual_server.bw-control
  ]
  name                    = "ws-vip-2"
  ip_address              = var.thunder_vip_2
  template_virtual_server = "bw-control"
  port_list {
    port_number = 80
    protocol    = "http"
    aflex_scripts {
      aflex = "http-error-status-log"
    }
  }
}
