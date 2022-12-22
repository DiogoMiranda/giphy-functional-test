
# capybara-siteprism-test

A very basic implementation framework in Ruby, using Cucumber, Capybara and Site Prism (for Page Objects)

## Before run
### Windows

Install rubyinstaller https://rubyinstaller.org/downloads/

Install Ruby + Devkit 2.7.6

### Mac

Install homebrew 

Install Rbenv


## Chromedriver


Check before your version Chrome

### Mac 
```
brew install --cask chromedriver
```

If error - chromedriver” cannot be opened because the developer cannot be verified. Unable to launch the chrome browser
Run to fix 

```
which chromedriver
```
After 

```
xattr -d com.apple.quarantine /usr/local/bin/chromedriver
```
### Windows

install and run the same version Chromedriver of your Chrome https://chromedriver.chromium.org/downloads

Copy chromedrive and past in C:\Windows (in case the Windows SO)

Check the permissions

Execute chromedriver

## To run

After going into the directory...

```
gem install bundler
```

```
bundle install
```

```
cucumber features/search.feature
```
### Report

```
cucumber --format pretty --format html --out=reports/reports.html
```

### Materials as support

https://pt.linkedin.com/pulse/do-zero-ao-b%C3%A1sico-aprenda-criar-um-teste-de-aceita%C3%A7%C3%A3o-renato-nunes

https://github.com/teamcapybara/capybara

https://www.devmedia.com.br/introducao-ao-recursos-basicos-da-linguagem-ruby/31504
