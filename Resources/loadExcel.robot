***Setting***
Library    ExcelRobot 
Resource    GetExcelData.robot       

***Variables***
#${ExcelPath}    C:/Users/AC49605/Desktop/Robot/DataDriven/Test_Data/DataSheet.xlsx
${ExcelPath}    ${CURDIR}/Test_Data/DataSheet.xlsx

***Keywords***
Load Excel Data
    [Arguments]    ${SheetName}    ${TestcaseName}    ${TestcaseColumnName}
    Open Excel    C:/Users/AC49605/Desktop/Robot/DataDriven/Test_Data/DataSheet.xlsx
    ${colData}    Get Data From Column    ${SheetName}    ${TestcaseName}    ${TestcaseColumnName}
    Log    ${colData}
    [Return]    ${colData}    

