{include file="header.tpl"}


<table cellspacing=0 cellpadding=2 border=0 width=100%>
<tr>
 <th class=title><a name=sitelisting></a>Site Listing</th>
</tr>
<tr>
 <td>
{$settings.site_name} is a listing of high yield investment programs.<br><br>

You can only add a new investment program or a game if you are it's administrator or owner.<br>
Do not submit a referral url. Write an e-mail in your program domain.<br><br>

After approving your service it will be added in the list.<br><br>
We have the right to refuse your program listing.<br><br>
If you submit to any type of advertising option and your program will be not paying to investors, we have the right to disable your advertising.<br><br>
You cannot rate your own program. If our system will find these votes program will be blacklisted. To get more proper votes you can place our button in most visible place on your site and ask your members for voting every 24 hours.<br>
<br><br>
{section name=g loop=$groups}
<li><a href="?a=add&type={$groups[g].id}">Add your program to {$groups[g].type} listing</a><br>
{/section}
<br><br>
 </td>
</tr>
<tr>
 <th class=title><a name=bannerads></a>Banner Ads</th>
</tr>
<tr>
 <td>
Place text and form for your banner ads offers here.
<br><br>
 </td>
</tr>
<tr>
 <th class=title><a name=textads></a>Text Ads</th>
</tr>
<tr>
 <td>
Place text and form for your text ads offers here.
<br><br>
 </td>
</tr>
<tr>
 <th class=title><a name=sponsorednew></a>Sponsored News Messages</th>
</tr>
<tr>
 <td>
Place text and form for your sponsored news messages ads offers here.
<br><br>
 </td>
</tr>
<tr>
 <th class=title><a name=logo></a>Links Exchange</th>
</tr>
<tr>
 <td>
Place text and form for your links exchange offers here.
<br><br>
 </td>
</tr>
</table>

{include file="footer.tpl"}
