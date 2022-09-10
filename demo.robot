*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Demo Example
  open browser  http://www.google.com  chrome
  sleep  1s
  close browser