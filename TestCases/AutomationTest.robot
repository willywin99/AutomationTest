*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://kompas.com
${searchKey}    pemilu
${email}        willywin1999@gmail.com
${password}     TestAutomation123

*** Test Cases ***
LoginUser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Click Element    xpath://i[@id='sso__icon__login_top']
    Click Element    xpath://span[normalize-space()='Login']
    Sleep    5
    
    Input Text    id:email        ${email}
    Input Text    id:password     ${password}
    Click Element    xpath://input[@value='Login']
    Sleep    5

#    Click Element    xpath://a[normalize-space()='Lanjutkan']
#    Sleep    5

    Close Browser

SearchNews
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Click Element    xpath://input[@id='search']
    Input Text    id:search    ${searchKey}
    Press Keys    xpath://input[@id='search']    ENTER
    Sleep    5

    Click Link    xpath://body/div[@class='wrap']/div[@class='container clearfix']/div[@class='row mt2 col-offset-fluid clearfix']/div[@class='col-bs10-7']/div[@id='___gcse_0']/div[@class='gsc-control-cse gsc-control-cse-en']/div[@class='gsc-control-wrapper-cse']/div[@class='gsc-results-wrapper-nooverlay gsc-results-wrapper-visible']/div[@class='gsc-wrapper']/div[@class='gsc-resultsbox-visible']/div[@class='gsc-resultsRoot gsc-tabData gsc-tabdActive']/div[@class='gsc-results gsc-webResult']/div[@class='gsc-expansionArea']/div[2]/div[1]/div[1]/div[1]/a[1]
    Sleep    5

    Scroll Element Into View    xpath://p[contains(text(),'- Undang-Undang (UU) Nomor 7 Tahun 2017 tentang Pe')]
    Sleep    5

    Close Browser

*** Keywords ***
