<table cellspacing=0 cellpadding=2 border=0 width=100%>
<tr>
 <th colspan=2><img src=images/q.gif width=150 height=3></th>
</tr>
<tr>
	<th colspan=2 class=title>News</th>
</tr>
{section name=s loop=$news}
<tr>
 <td class={if $news[s].sponsored}smallnewsspons{else}smallnews{/if}><span class=smallnewstitle>{$news[s].title}</span><br>
  <span class=smallnewstext>{$news[s].small_text}</span> <a href="?a=news#{$news[s].id}" class=smalllink>more</a><br>
  <span class=smallnewsdate>{$news[s].d}</span></p>
 </td>
</tr>
{/section}
<tr>
 <td><a href="?a=news">All news</a>
 </td>
</tr>
</table>
<br>
