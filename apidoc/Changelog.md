Получение ченджлогов через API:

GET `/updater/v1/changelog`

HEADER
AcceptLanguage: en | ru

response:

```JSON
{
    "version": "2021-01-28-b85f9bd",
    "updated_at": "08-02-2020T12:00:00",
    "changelogs": {
        "0.md": "## 2021-01-28-b85f9bd-\n\n### Important notes\n- February 1, 2021 the free Yahoo Weather API will be retired. We recommend you to use the OpenWeatherMap addon instead of Yahoo Weather.\n\n### Features\n- New improved process of running scenarios\n- New addon - OpenWeatherMap\n- The ability of processing false alarms in the Alarm system simple scenario\n- The ability to set up the values setting on a schedule using a cyclic time relay\n- New simple scenario - Advanced time relay\n- Added the ability to install plugins in Grafana\n- The ability to use groups in simple scenarios\n- The ability to contribute new Modbus devices to our platform\n\n### Bugs\n- Fixed stopping and restarting addons on system update/restart\n- Fixed sending an extra message to the notification channel when pressing the “Alarm” button\n- Fixed the control for selecting a city on iOS/Android\n- Fixed displaying of addons in the Service manager when downloading them\n- Fixed the disappearance of a scenario from the selection of scenarios when an update is available\n\n### Minor improvements\n- Changed the main logo and favicon in the application\n- Added the ability to view sunset and sunrise times in the scenario threshold\n- Changed name generation logic for scenarios\n- Added an eye to hide/show the password in the login form\n- Sending sensor values by the Esphome addon when they are changed\n",
        "1.md": "## 2020-11-25-0143746\n\n### Features\n- The ability to automatically check for updates for extensions\n- The ability to view sunset and sunrise times in the scenario threshold\n\n### Bugs\n- Fixed white screen when editing a widget with a group \n- Fixed a bug with not displaying an error when saving the Gauge widget with empty min / max values\n- Fixed indents in modals\n- Fixed cropping of the window with the autodiscovery service on Android",
        "2.md": "## 2020-11-18-4d6d142\n\n### Features\n- The ability to maintain the duration of daylight hours using the simple scenario\n- The ability to connect devices with ESPHome firmware\n- The ability to simplify Tesla automobile controlling and obtain a number of characteristics\n- The ability to install some services during the installation of the entire system\n- Simplified the interface for configuring simple scenarios\n- The ability to work with scenarios thresholds through other simple scenarios\n- The ability to view the time of the discovered device\n\n### Bugs\n- Fixed a bug in which not the whole system restarted on reboot\n- Fixed the Sunrise sunset scenario requirement to fill in extra fields\n- Fixed not handling emergency change of load state of the Thermostat scenario\n- Fixed the interface slowdown with a large number of notifications\n- Fixed the incorrect determination of sunrise/sunset times in the scenario for cities outside the server timezone\n- Fixed not updating sunrise/sunset times in the scenario\n- Fixed on the mobile:\n    - Inconvenient PIN code entry\n    - The appearance of a gray block under the menu when you swipe up\n- Fixed not installing extensions when installing all at once\n- Fixed falling CLI tool for scanning on Modbus network\n- Fixed not working scenarios after changing the topic\n- Fixed bug with adding a device with autodiscovery\n\n### Minor improvements\n- The ability to sort scenarios by editing date\n- Added logging in simple scenarios\n- The panic button on Alarm widget was made optional\n- The ability to control loads of different types of data using a thermostat"
    }
}
```