*** Settings ***
Library    BuiltIn

*** Variables ***
${scalar}    Hello    #ตัวแปรค่าคงที่ ->Hello
@{List1}    Robot    Framework    #ตัวแปรที่เป็น [] หรือเป็น list  ->['Robot', 'Framework']
&{dict}    key1=value1    key2=value2  #ตัวแปร dictionary หรือรูปแบบของ JSON  -> {'key1': 'value1', 'key2': 'value2'}

*** Keywords ***

*** Test Cases ***
Test Data
    Log To Console    \n${scalar}
    Log To Console    \n${List1}
    Log To Console    \n${List1}[1]
    Log To Console    \n${dict}
    Log To Console    \n${dict}[key1]
    ${test}    Create List    Test    2022
    Log To Console    \n${test}
    Log To Console    \n${test}[0]
    Log To Console    \n${test[0]}
    &{dict2}    Create Dictionary    ID1=test1    ID2=test2    ID3=test3
    Log To Console    \n${dict2}
    Log To Console    \n${dict2}[ID3]
    Log To Console    \n${dict2.ID3}
