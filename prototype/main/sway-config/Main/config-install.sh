#!/usr/bin/env bash

set -e


################################################################################
### Head: sway
##

sway_config_run_pre () {

	sway_service_stop


	return 0

}

sway_config_run_post () {

	sway_service_start


	return 0

}

sway_service_stop () {

	sway_service_stop_xfconfd

	#sway_service_stop_xfsettingsd


	return 0

}

sway_service_stop_xfconfd () {

	if killall -9 xfconfd; then
		return 0
	fi


	return 0

}

sway_service_stop_xfsettingsd () {

	if killall -9 xfsettingsd; then
		return 0
	fi


	return 0

}

sway_service_start () {


	return 0

}

sway_config_install () {

	echo
	echo "##"
	echo "## Config: sway"
	echo "##"
	echo


	sway_config_install_by_dir


	echo

}

sway_config_install_by_dir () {


	echo
	echo "mkdir -p ${HOME}"
	mkdir -p "${HOME}"


	echo
	echo "cp -rf ./asset/overlay/etc/skel/. ${HOME}"
	cp -rf "./asset/overlay/etc/skel/." "${HOME}"


}

##
### Tail: sway
################################################################################


################################################################################
### Head: config_install
##

main_config_install () {

	sway_config_run_pre

	sway_config_install

	sway_config_run_post

}

##
### Tail: config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_config_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
