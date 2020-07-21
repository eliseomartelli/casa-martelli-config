<p align="center">
	<img src=".github/supporting_files/icon.png" width="200">
	<h1 align=center style="margin: 0;">Home Automation</h1>
	<p align=center>Home Assistant & Friends</p>
	<br>
	<p align=center>
		<img src="https://github.com/eliseomartelli/ParentsHomeAutomation/workflows/Home%20Assistant%20CI/badge.svg">
		<a href="https://github.com/eliseomartelli/ParentsHomeAutomation/tree/master">
			<img src="https://img.shields.io/badge/Branch-master-green.svg?longCache=true"
				alt="Branch">
		</a>
		<img alt="undefined" src="https://img.shields.io/github/license/eliseomartelli/ParentsHomeAutomation.svg">
		<img src="https://img.shields.io/badge/haversion-%VERSION-blue.svg">
		<img src="https://img.shields.io/badge/automations-%AUTOMATIONS-purple.svg">
	</p>
</p>

---

### System Architecture

This Home Automation setup is currently running on a Mini PC [[LINK]](https://amzn.to/2MLfRn9).
The specs are:
- RAM: 2Gb
- CPU: Atom x5-Z83500
- EMMC: 32Gb

This machine runs the latest version of **Ubuntu Server LTS.**

### Software
As already stated the *O.S.* of this *itty-bitty* machine is **Ubuntu Server LTS.**
On top of that there's **Docker**.

#### Docker Containers
- **Home Assistant Supervisor**
*(homeassistant/amd64-hassio-supervisor)*
- **Caddy**
*(abiosoft/caddy)*

Docker Containers are currently deployed using [Ansible](https://www.ansible.com/), you can look into the server configuration here: [`./provision/`](https://github.com/eliseomartelli/ParentsHomeAutomation/tree/master/provision).

#### Home Assistant Addons
- **AdGuard Home**
- **File Editor**
- **DuckDNS**
- **Mosquitto Broker**
- **Assistant Relay**
- **MotionEye**

Home Assistant Addons are installed manually with the Add-on Store.
