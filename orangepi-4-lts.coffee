deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

ORANGEPI_BOARD_SHUTDOWN = "The device is performing a shutdown. Please wait until the blue LED stops flashing (powered off)."

postProvisioningInstructions = [
	ORANGEPI_BOARD_SHUTDOWN
	instructions.REMOVE_INSTALL_MEDIA
	instructions.BOARD_REPOWER
]

module.exports =
	version: 1
	slug: 'orangepi-4-lts'
	name: 'ORANGE Pi 4 LTS'
	arch: 'aarch64'
	state: 'new'

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_SD
		instructions.EJECT_SD
		instructions.FLASHER_WARNING
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'https://www.balena.io/docs/learn/getting-started/orangepi-4-lts/nodejs/'
		osx: 'https://www.balena.io/docs/learn/getting-started/orangepi-4-lts/nodejs/'
		linux: 'https://www.balena.io/docs/learn/getting-started/orangepi-4-lts/nodejs/'
	supportsBlink: true

	options: [ networkOptions.group ]

	yocto:
		machine: 'orangepi-4-lts'
		image: 'balena-image-flasher'
		fstype: 'balenaos-img'
		version: 'yocto-dunfell'
		deployArtifact: 'balena-image-flasher-orangepi-4-lts.balenaos-img'
		compressed: true

	configuration:
		config:
			partition: 4
			path: '/config.json'

	initialization: commonImg.initialization
