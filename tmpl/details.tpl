{include file="header.tpl"}

{literal}
<script language=javascript><!--
function viewStatistics(id)
{
  w = 400; h = 600;
  t = (screen.height-h-30)/2;
  l = (screen.width-w-30)/2;
  window.open('?a=view_statistics&lid=' + id, 'view_statistics' + id, "top="+t+",left="+l+",width="+w+",height="+h+",resizable=1,scrollbars=1");
}
function procVote()
{
  if (!document.vote.email.value)
  {
    alert('Please, enter your E-Mail address!');
    document.vote.email.focus();
    return false;
  }
  else
  {
    a = document.vote.email.value.indexOf('@');
    b = document.vote.email.value.indexOf('@', a+1);
    c = document.vote.email.value.indexOf('.', a+1);
    if (a == -1 || b != -1 || c <= a + 2 || a < 1 || c + 2 >= document.vote.email.value.length || c + 4 < document.vote.email.value.length)
    {
      alert('Please, enter a valid E-Mail Address');
      document.vote.email.focus();
      return false;
    }
  }

  return true;
}
--></script>
{/literal}
<table cellspacing=0 cellpadding=2 border=0 width=100%><tr><td height=25 valign=top><a href="javascript:history.go(-1)" class=smalllink>&lt- Go Back &lt-</a></td></tr></table>
{if $group.type == 'Premium'}
{include file="details_premium.tpl"}
{/if}
{if $group.type == 'Normal'}
{include file="details_normal.tpl"}
{/if}
{if $group.type == 'Trial'}
{include file="details_trial.tpl"}
{/if}
{if $group.type == 'Free'}
{include file="details_free.tpl"}
{/if}
{if $group.type == 'Games'}
{include file="details_games.tpl"}
{/if}
{if $group.type == 'Scam'}
{include file="details_scam.tpl"}
{/if}
{if $group.type == 'Closed'}
{include file="details_closed.tpl"}
{/if}
<br>
<table cellspacing=0 cellpadding=2 border=0 width=100%>
<tr>
  <td align=center width=25%>
   <img src="images/r3.gif" alt="Very Good" title="Very Good"><br>
   Very Good<br>
   <b>{$listing.votes_summary.3} votes</b>
  </td>
  <td align=center width=25%>
   <img src="images/r2.gif" alt="Good" title="Good"><br>
   Good<br>
   <b>{$listing.votes_summary.2} votes</b>
  </td>
  <td align=center width=25%>
   <img src="images/r1.gif" alt="Bad" title="Bad"><br>
   Bad<br>
   <b>{$listing.votes_summary.1} votes</b>
  </td>
  <td align=center width=25%>
   <img src="images/r0.gif" alt="Very Bad" title="Very Bad"><br>
   Very Bad<br>
   <b>{$listing.votes_summary.0} votes</b>
  </td>
</tr>
</table>

{if $votes}
<table cellspacing=1 cellpadding=2 border=0 width=100%>
<tr>
  <td align=center class=title>Rating</td>
  <td align=center class=title>User Host</td>
  <td align=center class=title>User E-Mail</td>
  <td align=center class=title>Date</td>
</tr>
{section name=v loop=$votes}
<tr class={if $smarty.section.v.rownum % 2 == 0}detailsbg1{else}detailsbg2{/if}>
  <td align=center>
   {if $votes[v].vote == 0}<img src="images/r0.gif" alt="Very Bad" title="Very Bad">{/if}
   {if $votes[v].vote == 1}<img src="images/r1.gif" alt="Bad" title="Bad">{/if}
   {if $votes[v].vote == 2}<img src="images/r2.gif" alt="Good" title="Good">{/if}
   {if $votes[v].vote == 3}<img src="images/r3.gif" alt="Very Good" title="Very Good">{/if}
  </td>
  <td>{$votes[v].ip}</td>
  <td>{$votes[v].email}</td>
  <td align=center>{$votes[v].fdate}</td>
</tr>
{if $votes[v].comment}
<tr>
  <td>&nbsp;</td>
  <td colspan=3><img src="images/vcom.gif" alt=""> <font color="{if $votes[v].vote == 0}red{/if}{if $votes[v].vote == 1}orange{/if}{if $votes[v].vote == 2}#CBA903{/if}{if $votes[v].vote == 3}green{/if}">{$votes[v].comment}</td>
</tr>
{/if}
{/section}
</table>
{/if}
<br>
<a name="vote"></a>
<form method=post name=vote onsubmit="return procVote()">
<input type="hidden" name="a" value="add_vote">
<input type="hidden" name="action" value="save">
<input type="hidden" name="lid" value="{$listing.id}">
<table cellspacing=0 cellpadding=2 border=0 width=100%>
<tr>
 <td colspan=4 class=title align=center><b>Add your Vote</b></td>
</tr>
<tr>
  <td align=center width=25% height=50>
   <img src="images/r3.gif" alt="Very Good" title="Very Good"><br>
   <input type="radio" name="vote" value=3>
   Very Good<br>
  </td>
  <td align=center width=25%>
   <img src="images/r2.gif" alt="Good" title="Good"><br>
   <input type="radio" name="vote" value=2 checked>
   Good<br>
  </td>
  <td align=center width=25%>
   <img src="images/r1.gif" alt="Bad" title="Bad"><br>
   <input type="radio" name="vote" value=1>
   Bad<br>
  </td>
  <td align=center width=25%>
   <img src="images/r0.gif" alt="Very Bad" title="Very Bad"><br>
   <input type="radio" name="vote" value=0>
   Very Bad<br>
  </td>
</tr>
<tr>
  <td colspan=4>
You can write short comment (max. 255 chars):<br>
<input type="text" name="comment" size=114 maxlength=255 class=inpts>
  </td>
</tr>
<tr>
  <td colspan=4>
Your e-mail{if $settings.vote_confirmation_require} (we will send you your vote confirmation code){/if}:<br>
<input type="text" name="email" class=inpts size=40>
  </td>
</tr>
<tr>
  <td colspan=4><input type="submit" value="Vote" class=sbmt></td>
</tr>
</table>

{include file="footer.tpl"}
