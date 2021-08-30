*** Settings ***
Library           SeleniumLibrary
Library           DataDriver    file=inputs.csv    encoding=utf-8    dialect=excel
Resource          variables.robot
