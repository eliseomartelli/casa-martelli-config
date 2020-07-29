<p align="center">
	<img src=".github/supporting_files/icon.png" width="200">
	<h1 align=center style="margin: 0;">Casa Martelli</h1>
	<p align=center>Home Assistant & Friends</p>
	<br>
	<p align=center>
		<img src="https://github.com/eliseomartelli/ParentsHomeAutomation/workflows/Home%20Assistant%20CI/badge.svg">
		<a href="https://github.com/eliseomartelli/ParentsHomeAutomation/tree/master">
			<img src="https://img.shields.io/badge/Branch-master-green.svg?longCache=true"
				alt="Branch">
		</a>
		<img alt="undefined" src="https://img.shields.io/github/license/eliseomartelli/ParentsHomeAutomation.svg">
		<img src="https://img.shields.io/badge/haversion-0.113.2-blue.svg">
		<img src="https://img.shields.io/badge/automations-22-purple.svg">
	</p>
</p>

---

Casa Martelli is our family home in Abruzzo, Italy. It's an happy place located in the historic centre of a little town. Everthing about our house is always a work in progress so expect a lot of updates to this repo.

### Why do we automate?

Automations in our house are there to help us reduce the number of repetitive tasks so we can focus on more important things.

### Approach to automations

Our automations should adapt to us, not the opposite, they are there to add value to the interactions we have with our living space.

A great article by Paulus Schoutsen can be found [here](https://www.home-assistant.io/blog/2016/01/19/perfect-home-automation/).

## Software

Our automation software of choice is Home Assistant. Our install is "Supervised" by the Home Assistant Supervisor.

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


## Hardware

This Home Automation setup is currently running on a Mini PC [[LINK]](https://amzn.to/2MLfRn9).
The specs are:
- RAM: 2Gb
- CPU: Atom x5-Z83500
- EMMC: 32Gb

This machine runs the latest version of **Ubuntu Server LTS.**

## Issues

Issues in this repo are handled like @ccostan, @jcallaghan or @frenck.
They are in place to help me track what needs to be done and the priority of these tasks.
