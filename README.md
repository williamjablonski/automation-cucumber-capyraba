# MTPI/Santander WEB automation With Cucumber+Capyraba  #

This is a small framework that uses Cucumber and Capyraba to execute test on Selenium Webdriver for MTPI/Santander Solutions.

### Setting up ###

Ruby 2.2-3 is recommended to run the tests. We will use [RVM](https://rvm.io) to control the ruby version. For Windows you can use the [RubyInstaller](http://rubyinstaller.org/)

```
$ rvm install ruby-2.2.3
```

### Build and Run ###

To install the dependencies for the project run ```$ bundle install ``` in the project root folder.

To run the automation on your local you can follow the example below.
1. Download the [GeckoDriver](https://github-cloud.s3.amazonaws.com/releases/25354393/3adb8e96-e8d0-11e6-80e8-e1d58ee7840f.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20170221%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20170221T065930Z&X-Amz-Expires=300&X-Amz-Signature=1e69a6ed35f194bc5d75980df2ba), extract it and start it.
```
geckodriver -b /usr/bin/firefox
```
So you might see something like this
![GeckoDriver](pic03.png)
2. Then, just run the automation!
```
bundle exec cucumber features/search_agency.feature -r features/support/step_definitions/
```
And the Firefox Browser will show up and will perform the automation! \o/
![GeckoDriver](pic04.png)

### Automation Guidelines ###

* Scenarios should describe the feature, not edge cases.
* All scenarios should have a tag to identify which functionality/story it is being tested.
* Scenarios without step definitions or unfinished should contain `@WIP` tags.
```
@RD-100
Scenario: Search bank places arround of me
```
