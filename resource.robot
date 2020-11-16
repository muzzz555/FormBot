*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}      http://172.25.192.1:8080/
${BROWSER}  Firefox

*** Keywords ***
Open Browser To Form
    Open Browser                 ${URL}                       ${BROWSER}
    Maximize Browser Window
    Click Button                 Next
    Execute JavaScript           document.querySelector('button[title="Date picker"]').click()
    Execute JavaScript           document.querySelector('.picker__day--highlighted').click()
    Execute JavaScript           document.querySelectorAll('input[type="radio"]')[0].click()    
    Execute JavaScript           document.querySelectorAll('input[type="radio"]')[3].click()    
    Execute JavaScript           document.querySelectorAll('input[type="radio"]')[9].click()    
    Click Button                 Next
    Execute JavaScript           document.querySelectorAll('input[type="radio"]')[2].click()    
    Click Button                 Next
    Execute JavaScript           document.querySelector('.select-placeholder').click()    
    Execute JavaScript           document.querySelectorAll('.select-option-nocheck')[3].click()    
    Click Button                 Next
    Execute JavaScript           document.querySelectorAll('input[type="radio"]')[1].click()    
    Click Button                 Next
    Execute JavaScript           document.querySelectorAll('input[type="radio"]')[0].click()    
    Click Button                 Next
    Execute JavaScript           document.querySelectorAll('input[type="radio"]')[0].click()    
    Click Button                 Submit
    [Teardown]
        Close Browser