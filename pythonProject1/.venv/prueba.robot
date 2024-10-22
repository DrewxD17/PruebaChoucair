*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Login with correct Username and Password
    Open Browser    url=https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    browser=chrome
    Maximize Browser Window
    Sleep    4
    Input Text    //input[@name='username']    admin
    Input Text    //input[@name='password']    admin123
    Click Button    //button[@type='submit']
    Sleep    4
    Click Element    //span[.//text()='Recruitment']
    Sleep    3
    Click Button    //button[.//text() = ' Add ']
    Sleep    3
    Input Text    //input[@name='firstName']    Marc
    Input Text    //input[@name='middleName']    MacKlagan
    Input Text    //input[@name='lastName']    MacKgalan
    Click Element    //i[@class='oxd-icon bi-caret-down-fill oxd-select-text--arrow']
    Sleep    3
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[1]/div/div[2]/input    test@test.com
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/div/div[2]/div/div[2]/input    123456789
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[5]/div/div[1]/div/div[2]/input    TEster QA LEAD
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[6]/div/div/div/div[2]/textarea    is a god tester
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[7]/div/div/div/div[2]/div/label/span/i
    Click Button    //button[@type='submit']
    Sleep    4
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[1]/div/div[5]/div/i


    Close Browser