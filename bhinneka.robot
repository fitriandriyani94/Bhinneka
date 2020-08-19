*** Settings ***
Documentation        This is a basic test
Library              Selenium2Library

*** Variables ***
${browser}        chrome
${url}            https://www.bhinneka.com/

*** Test Cases ***
Akses bhinneka
    Open Browser        ${url}    ${browser}
    Sleep               5s
    Click Element       xpath=//a[contains(text(), 'Login')]
    Sleep               5s
    Input text          id:input[email]      fitriandriyani18@gmail.com
    Input text          id:input[password]   test1234!
    Click Element       id:ant-btn ant-btn-primary
    Sleep               5s
    Input text          name:bt-search-suggestion__input    
    Close Browser

*** Keywords ***
Bhinneka
    Akses bhinneka