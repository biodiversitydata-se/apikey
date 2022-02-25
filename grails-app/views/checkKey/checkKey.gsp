%{--
  - Copyright (C) 2022 Atlas of Living Australia
  - All Rights Reserved.
  -
  - The contents of this file are subject to the Mozilla Public
  - License Version 1.1 (the "License"); you may not use this file
  - except in compliance with the License. You may obtain a copy of
  - the License at http://www.mozilla.org/MPL/
  -
  - Software distributed under the License is distributed on an "AS
  - IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
  - implied. See the License for the specific language governing
  - rights and limitations under the License.
  --}%
<!doctype html>
<html>
<head>
    <meta name="layout" content="${grailsApplication.config.skin.layout}"/>
    <meta name="section" content="home"/>
    <title>API key check | ${grailsApplication.config.skin.orgNameLong} </title>
</head>
<body>
<div class="row">
    <div class="col-md-9" id="page-body" role="main">
        <h1>Key ${valid ? 'is valid' : 'isnt valid'}</h1>
        <p>
            <g:if test="${request.isUserInRole('ROLE_ADMIN') && key}">
                <h3>Key: ${key?.apikey}</h3><br/>
                <h3>Enabled: <g:formatBoolean boolean="${key?.enabled}"/></h3><br/>
                <h3>Created: <g:formatDate date="${key?.dateCreated}" /></h3><br/>
                <h3>Last Used: <g:formatDate date="${key?.lastUsed}"/></h3><br/>
                <h3>Last Remote Addr: ${key?.lastRemoteAddr}</h3><br/>
            </g:if>
        </p>
    </div>
</div>
</body>
</html>
