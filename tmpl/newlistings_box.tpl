<!-- Image Table: Start -->
<table cellspacing=0 cellpadding=2 border=0 width=100%>
<tr>
 <th colspan=2><img src=images/q.gif width=150 height=3></th>
</tr>
<tr>
 <th colspan=2 class=title>New Listings</th>
</tr>
{section name=l loop=$new_listings}
{if $new_listings[l].data_type == 'date'}
<tr>
 <td class=newlistingsdate>
   {$new_listings[l].date}
 </td>
</tr>
{else}
<tr>
 <td class=newlistings>
   <a href="?a=go&lid={$new_listings[l].id}" target=_blank class=newlistingslink>{$new_listings[l].name}</a><br>
   {$new_listings[l].percents}
 </td>
</tr>
{/if}
{/section}
</table>
