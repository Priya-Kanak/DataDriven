***Setting***
Library    ExcelRobot

***Variables***




***Keywords***
Get Data From Column
    [Arguments]    ${sSheetname}    ${sTestcaseNo}    ${sTCColumnName}
    ${col_Count}    Get Column Count    ${sSheetname}
    log    ${sSheetname}
    :FOR    ${y}    IN RANGE    0    ${col_Count}
    \    ${Header}    Read Cell Data    ${sSheetname}    ${y}    0
    \    Run Keyword If    '${Header}'=='${sTCColumnName}'    Set Test Variable    ${col_num}    ${y}
    log    ${col_num}
    ${total_row}    Get Row Count    ${sSheetname}
    :FOR    ${row_num}    IN RANGE    1    ${total_row}+1
    \    ${TC_Num}    Read Cell Data    ${sSheetname}    0    ${row_num}
    \    ${sSearchedData}    Run Keyword If    '${sTestcaseNo}'=='${TC_Num}'    Read Cell Data    ${sSheetname}    ${col_num}    ${row_num}
    \    Run Keyword If    "${sTestcaseNo}"=="${TC_Num}"    Exit For Loop
    [Return]    ${sSearchedData}                                      