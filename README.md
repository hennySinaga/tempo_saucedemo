# saucedemo - Tempo recruitment test
Simple Web Testing On Saucedemo Website. Built with `Robot Framework`.


## Folder Structure
### suites
Suites folder contains test script based on test scenarios.
### pages
File devided by pages on the website. Each file consist applicable keyword on the page.
### locators
Website element locators is listed as variables.
### utils
Contain common function to run web testing.


## How To Run
Simply use robot command on terminal.
```sh
robot suites/[path to file]
```
Example
```sh
robot suites/Scenario.robot
```
Or simply run this command to run all test on the suites.
```sh
robot suites/
```
