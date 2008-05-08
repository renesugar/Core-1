{IF ERROR}
  <div class="PhorumUserError">{ERROR}</div>
{/IF}
<div align="center">
  <form action="{URL->ACTION}" method="post" style="display: inline;">
    {POST_VARS}
    <input type="hidden" name="open_id" value="{OPENID->open_id}" />
    <div class="PhorumNavBlock PhorumNarrowBlock" style="text-align: left;">
      <span class="PhorumNavHeading">{LANG->Goto}:</span>&nbsp;{IF URL->INDEX}<a class="PhorumNavLink" href="{URL->INDEX}">{LANG->ForumList}</a>&bull;{/IF}{IF URL->LIST}<a class="PhorumNavLink" href="{URL->LIST}">{LANG->MessageList}</a>&bull;{/IF}<a class="PhorumNavLink" href="{URL->SEARCH}">{LANG->Search}</a>&bull;{INCLUDE "loginout_menu"}
    </div>
    <div class="PhorumStdBlockHeader PhorumNarrowBlock PhorumHeaderText" style="text-align: left;">{LANG->Register}</div>
    <div class="PhorumStdBlock PhorumNarrowBlock" style="text-align: left;">
      <table class="PhorumFormTable" cellspacing="0" border="0">
        <tr>
          <td nowrap="nowrap">{LANG->OpenID}*:&nbsp;</td>
          <td>{OPENID->open_id}</td>
        </tr>
        <tr>
          <td nowrap="nowrap">{LANG->Username}*:&nbsp;</td>
          <td><input type="text" name="username" size="30" value="{OPENID->username}" /></td>
        </tr>
        <tr>
          <td nowrap="nowrap">{LANG->RealName}:&nbsp;</td>
          <td><input type="text" name="real_name" size="30" value="{OPENID->real_name}" /></td>
        </tr>
        <tr>
          <td nowrap="nowrap">{LANG->Email}*:&nbsp;</td>
          <td><input type="text" name="email" size="30" value="{OPENID->email}" /></td>
        </tr>
      </table>
      {HOOK "tpl_register_form"}
      <div style="float: left; margin-top: 5px;">*{LANG->Required}</div>
      <div style="margin-top: 3px;" align="right"><input type="submit" class="PhorumSubmit" value=" {LANG->Submit} " /></div>
    </div>
  </form>
</div>
