<table cellspacing=0 cellpadding=2 border=0 width=100%>
<tr>
 <th class=title>{$groups[g].name}</th>
</tr>
{if $groups[g].reg_enabled}
<tr>
 <td align=right><a href="?a=advertise#{$groups[g].type}" class=smalllink>List your program in the {$groups[g].type} listing</a></td>
</tr>
{/if}
{section name=l loop=$groups[g].listings}
<tr>
 <td>
{assign var='listing' value=$groups[g].listings[l]}
{include file="details_premium.tpl"}
 </td>
</tr>
{/section}
</table>
