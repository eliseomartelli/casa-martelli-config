<p align="center">
	<img src="supporting_files/icon.png" width="200">
	<h1 align=center style="margin: 0;">Home Automation</h1>
	<p align=center>Home Assistant & Friends</p>
	<br>
	<p align=center>
		<a href="https://travis-ci.org/eliseomartelli/ParentsHomeAutomation">
			<img src="https://travis-ci.org/eliseomartelli/ParentsHomeAutomation.svg?branch=master"/>
		</a>
		<a href="https://github.com/eliseomartelli/ParentsHomeAutomation/tree/master">
			<img src="https://img.shields.io/badge/Branch-master-green.svg?longCache=true"
				alt="Branch">
		</a>
		<img alt="undefined" src="https://img.shields.io/github/license/eliseomartelli/ParentsHomeAutomation.svg">
		<img src="https://img.shields.io/badge/haversion-0.103.4-blue.svg">
		<img src="https://img.shields.io/badge/automations-17-purple.svg">
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
On top of that there's **Docker** (installed with snap).
#### Docker Containers
- **Home Assistant**
*(homeassistant/home-assistant)*
- **Mosquitto** 
*(eclipse-mosquitto)*
- **MotionEye** 
*(ccrisan/motioneye)*
- **Guacamole** 
*(oznu/guacamole)*
- **Puller** 
*(eliseomartelli/puller)*
- **HaDockermon** 
*(philhawthorne/ha-dockermon)*
- **AdGuard** 
*(adguard/adguardhome)*
- **DuckDNS** 
*(linuxserver/duckdns)*
- **Caddy** 
*(abiosoft/caddy)*
