*** Settings ***
Documentation        This is a basic test
Library              Selenium2Library

*** Variables ***
${browser}        chrome
${url}            https://www.bhinneka.com/

*** Test Cases ***
Akses bhinneka
    Open Browser        ${url}    ${browser}
     maximize browser window
    title should be     Bhinneka: Solusi Praktis untuk Kebutuhan Bisnis Terlengkap
    Click Element       xpath=//a[contains(text(), 'Login')]
    Sleep               5s
    ${"email_txt"} =    Set Variable    id:email
    ${"password"} =     Set Variable    id:password

    Element should be Visible    ${"email_txt"}
    Element should be Enabled    ${"email_txt"}

    input text                   ${"email_txt"}    fitriandriyani18@gmail.com
    Sleep                        3s
    Click Element                id=next
    Sleep                        3s
    input text                   ${"password"}     Fitri1234! 
    Sleep                        3s 
    Click Button                 xpath=//button[.//text() = 'MASUK']   
    

*** Keywords ***
Bhinneka
    Akses bhinneka