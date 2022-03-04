
*** Keywords ***
Begin Web Test
    Open Browser    about:blank  chrome

End Web Test
    Close Browser

User Can Access Website
      [Documentation]    This is some basic information about the test
      [Tags]   Date Test
      Go To   http://rental2.infotiv.net/webpage/html/gui/index.php
      Location Should Be   http://rental2.infotiv.net/webpage/html/gui/index.php

Start Date Should Be Current Date
    User Can Access Website
    ${current_date}  Get Current Date
    ${converted}  Convert Date	 ${current_date}   result_format=%Y-%m-%d
    ${infotiv_date}  Get Element Attribute   //*[@id="start"]   value
    Should Be Equal  ${converted}   ${infotiv_date}

Click Continue Button
    Click Button   id:continue  RETURN
    Location Should Be   http://rental2.infotiv.net/webpage/html/gui/showCars.php

User Log In
    User Can Access Website
    Wait Until Page Contains Element   id:email
    Input Text  id:email  g@live.se
    Input Text  id:password  111111
    Click Button   id:login
    Wait Until Page Contains Element  id:welcomePhrase


Header On My Page
    Go To  http://rental2.infotiv.net/webpage/html/gui/myPage.php
    Location Should Be  http://rental2.infotiv.net/webpage/html/gui/myPage.php
    Page Should Contain Element  id:rightHeader

Header On About Page
    Go To  http://rental2.infotiv.net/webpage/html/gui/about.php
    Wait Until Page Contains Element  id:welcomePhrase
    Page Should Contain Element  id:rightHeader

Header On Start Page
    Go To  http://rental2.infotiv.net/webpage/html/gui/index.php
    Wait Until Page Contains Element  id:welcomePhrase
    Page Should Contain Element  id:rightHeader

Header On Show Cars Page
    Go To  http://rental2.infotiv.net/webpage/html/gui/showCars.php
    Wait Until Page Contains Element  id:welcomePhrase
    Page Should Contain Element  id:rightHeader

Header On Confirm Book Page
    Go To  http://rental2.infotiv.net/webpage/html/gui/confirmBook.php
    Wait Until Page Contains Element  id:welcomePhrase
    Page Should Contain Element  id:rightHeader

