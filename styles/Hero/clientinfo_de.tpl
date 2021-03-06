<!--
TeamSpeak 3 Client Infoframe Template
Copyright 2009-2015 (c) TeamSpeak Systems GmbH
 
The replaceable variables are embedded in "%%" like %%CLIENT_NAME%%. At this time you can 
also use %%?CLIENT_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to 
remove the whole line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

#%%AVATAR_MAX_WIDTH%%128
#%%AVATAR_MAX_HEIGHT%%128
#%%CLIENT_SERVER_SHOW_MAX_GROUPS%%3

Replacable variables for clients:
CLIENT_NAME
CLIENT_NAME_PERCENT_ENCODED
CLIENT_CUSTOM_NICK_NAME
CLIENT_COUNTRY_TOOLTIP
CLIENT_COUNTRY_IMAGE
CLIENT_ID
CLIENT_UNIQUE_ID
CLIENT_AWAY_MESSAGE
CLIENT_PLATFORM
CLIENT_VERSION
CLIENT_VERSION_SHORT
CLIENT_VERSION_STATE   [Alpha|Beta|Stable]
CLIENT_DESCRIPTION
CLIENT_ICON
CLIENT_TOTALCONNECTIONS
CLIENT_CREATED
CLIENT_LASTCONNECTED
CLIENT_CONNECTED_SINCE
CLIENT_FLAG_AVATAR
CLIENT_IGNORE_AVATAR
AVATAR_MAX_WIDTH
AVATAR_MAX_HEIGHT
CLIENT_TALK_REQUEST_TIME
CLIENT_TALK_REQUEST_MSG
CLIENT_VOLUME_MODIFIER
CLIENT_CHANNEL_GROUP_NAME
CLIENT_CHANNEL_GROUP_ICON
CLIENT_SERVER_GROUP_NAME
CLIENT_SERVER_GROUP_ICON
CLIENT_DATABASE_ID
CLIENT_SERVER_SHOW_MAX_GROUPS
PLUGIN_INFO_DATA
-->

<style type="text/css">
  table#info { 
    border-collapse: collapse;
	border-spacing: 0px;
  }
  table#list {
    border-collapse: collapse;
    border-spacing: 0px;
    margin-bottom: 10px;
  }
  td {
    padding: 0px 4px 0px 1px;
  }
  td.label {
    font-weight: bold;
    white-space: nowrap;
  }
  td.space {
    padding-top: 6px;
  }
  td.list {
    padding: 0px 1px 0px 8px;
  }
  .blue {
    color: rgb(57,165,221);
  }
  .red {
    color: rgb(202,58,58);
  }
</style>

<table id="info">
  <tr>
    <td class="label">Benutzername:</td>
    <td>
      <img src="%%?CLIENT_COUNTRY_IMAGE%%" alt="" title="%%CLIENT_COUNTRY_TOOLTIP%%"/>&nbsp;&nbsp;
	  <a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%" class="TextMessage_UserLink">%%CLIENT_NAME%%</a>&nbsp;
      <span class="blue" title="Benutzerdefinierter Nickname">[%%?CLIENT_CUSTOM_NICK_NAME%%]</span>
    </td>
  </tr>
  <tr><td class="label">Beschreibung:</td><td>%%?CLIENT_DESCRIPTION%%</td></tr>
  <tr><td class="label">Lautst&auml;rke:</td><td class="red">%%?CLIENT_VOLUME_MODIFIER%% dB</td></tr>
  <tr>
    <td class="label">Client ID:</td>
    <td>%%CLIENT_UNIQUE_ID%%</td>
  </tr>
  <tr>
    <td class="label">Database ID:</td>
    <td>%%CLIENT_DATABASE_ID%%</td>
  </tr>
  <tr>
    <td class="label">Version:</td>
    <td>%%CLIENT_VERSION%% %%CLIENT_VERSION_STATE%% on %%CLIENT_PLATFORM%%</td>
  </tr>
  <tr>
    <td class="label">Verbindungen:</td>
    <td>%%CLIENT_TOTALCONNECTIONS%%</td>
  </tr>
  <tr>
    <td class="label">Erstellt:</td>
    <td>%%CLIENT_CREATED%%</td>
  </tr>
  <tr>
    <td class="label">Online seit:</td>
    <td>%%CLIENT_CONNECTED_SINCE%%</td>
  </tr>
  <tr>
    <td class="label">Icon:</td>
    <td><img src="%%?CLIENT_ICON%%" alt=""/></td>
  </tr>
</table>

<hr>

<table id="list">
  <tr><td class="space label"><img src="iconpath:PERMISSIONS_SERVER_GROUPS?size=16x16" height="12" width="12" alt=""> Servergruppen</td></tr>
  <tr><td class="list">
    <div>%%CLIENT_SERVER_GROUP_ICON%% %%CLIENT_SERVER_GROUP_NAME%%</span></div>
  </td></tr>
  <tr><td class="space label"><img src="iconpath:PERMISSIONS_CHANNEL_GROUPS?size=16x16" height="12" width="12" alt=""> Kanalgruppe:</td></tr>
  <tr><td class="list">
    <div>%%CLIENT_CHANNEL_GROUP_ICON%% %%CLIENT_CHANNEL_GROUP_NAME%%</div>
  </td></tr>
  <tr><td class="red"><br />*** %%CLIENT_NAME%% forderte um <b>%%?CLIENT_TALK_REQUEST_TIME%%</b> 'Rederechte' an.</td></tr>
  <tr><td class="red">&nbsp;&nbsp;&nbsp;&nbsp;(%%?CLIENT_TALK_REQUEST_MSG%%)</td></tr>
</table>

<hr>

<table id="list" width=100%>
  <tr><td class="space label"><img src="iconpath:PLUGINS?size=16x16" height="12" width="12" alt=""> Plugins:%%?PLUGIN_INFO_DATA%%</td></tr>
</table>