***Setting***
Library    ExcelRobot 
Library    SeleniumLibrary 
Resource    ../Resources/loadExcel.robot


***Variables***
${url}    https://opensource-demo.orangehrmlive.com/

*** Test Cases ***
ReadExcelData
    ${username}    loadExcel.Load Excel Data    Sheet1    TC01    Username
    ${password}    loadExcel.Load Excel Data    Sheet1    TC01    password
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Input Text    id=txtUsername    ${username} 
    Input Password    id=txtPassword     ${password}
    Sleep    2    
    Click Button    id=btnLogin    
    Click Element    id=welcome
    Click Element    link=Logout
    Close Browser 
    Log    Test Completed               
   

