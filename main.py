from pyautogui import hotkey, moveTo, click
from time import sleep
from webbrowser import open as wb_open
from subprocess import run as subp_run

def get_mouse_device_id():
	result = subp_run(['xinput', 'list'], capture_output=True, text=True)
	lines = result.stdout.splitlines()
	
	for line in lines:
		if 'mouse' in line.lower():
			parts = line.split()
			for part in parts:
				if 'id=' in part:
					return (part.split('=')[1])
	return (None)


# does not working
def get_keyboard_device_id():
	result = subp_run(['xinput', 'list'], capture_output=True, text=True)
	lines = result.stdout.splitlines()
	
	for line in lines:
		if 'keyboard' in line.lower():
			parts = line.split()
			for part in parts:
				if 'id=' in part:
					return (part.split('=')[1])
	return (None)

def disable_device(device_id):
	subp_run(['xinput', 'disable', device_id], capture_output=True, text=True)

def enable_device(device_id):
	subp_run(['xinput', 'enable', device_id], capture_output=True, text=True)

def main():
	device_id = get_mouse_device_id()
	if device_id:
		print(f"Disabling mouse with device ID: {device_id}")
		disable_device(device_id)

		wb_open('https://profile.intra.42.fr/')
		sleep(5)

		hotkey('f11')
		hotkey('alt', 'f10')

		moveTo(53, 879, duration=3)
		click()

		sleep(3)

		moveTo(1827, 626, duration=3)
		click()

		sleep(3)

		moveTo(1896, 517, duration=3)
		click()

		sleep(5)
		enable_device(device_id)
	else:
		wb_open('https://profile.intra.42.fr/')
		sleep(1)

		hotkey('f11')
		hotkey('alt', 'f10')

		moveTo(53, 879, duration=0)
		click()

		moveTo(1827, 626, duration=0)
		click()

		moveTo(1896, 517, duration=0)
		click()


if __name__ == "__main__":
	main()
