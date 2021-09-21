  <table cellspacing=0 cellpadding=1 border=0 width=100%><tr><td class=permiumdark>
   <table cellspacing=0 cellpadding=2 border=0 class=permiumlite width=100%>
    <tr>
     <td valign=top width=33%>
       <a href="?a=go&lid={$listing.id}" target=_blank><b>{$listing.name}</b></a>{if $listing.new} <font color="red"><b><i>new</i></b></font>{/if}<br>
       Status: 
               {if $listing.hyip_status == 1}<img src="images/m_pay.gif" border=0 alt="Paying" title="Paying" align=absmiddle>{/if}
               {if $listing.hyip_status == 2}<img src="images/m_wait.gif" border=0 alt="Waiting" title="Waiting" align=absmiddle>{/if}
               {if $listing.hyip_status == 3}<img src="images/m_prob.gif" border=0 alt="Problem" title="Problem" align=absmiddle>{/if}
               {if $listing.hyip_status == 4}<img src="images/m_npay.gif" border=0 alt="Not Paying" title="Not Paying" align=absmiddle>{/if}
        <br>
{if $listing.spend > 0}
       Our Invetment: <b>${$listing.spend}</b><br>
       Payout Ratio: <nobr><b>{$listing.ratio} <font color="#FF0000">{if $listing.ratio >= 1}in profit{/if}</font></b></nobr><br>
       <a href="javascript:viewStatistics('{$listing.id}')">Payout Statistics</a><br>
{/if}
{if !$detailed}
       <a href="?a=details&lid={$listing.id}">Program Details</a><br>
{/if}
       <br>
     </td>
     <td valign=top width=33%>
       <b>{$listing.percents}</b><br>
       Minimal Spend: <b>{$listing.min_spend}</b><br>
       Maximal Spend: <b>{if $listing.max_spend}{$listing.max_spend}{else}No Limit{/if}</b><br>
       Referral:  <b>{if $listing.referral}{$listing.referral}{else}No{/if}</b><br>
       Withdrawal: <b>
                     {if $listing.withdrawal_type == 1}Manual{/if}
                     {if $listing.withdrawal_type == 2}Instant{/if}
                     {if $listing.withdrawal_type == 3}Automatic{/if}
                   </b><br>
       <br>
     </td>
     <td valign=top width=33%>
       Our Rating: {section name=r loop=$listing.rates}{if $listing.rates[r].star}<img src="images/full_star.gif" align=absmiddle>{else}<img src="images/empty_star.gif" align=absmiddle>{/if}{/section}<br>
       Votes: <b>{$listing.avg_vote} - {$listing.cvotes} votes</b><br>
{if !$detailed}
       {if $listing.cvotes > 0}<a href="?a=details&lid={$listing.id}">View Votes</a> {/if}<a href="?a=details&lid={$listing.id}#vote">Vote Now</a><br>
{/if}
{if $listing.support_email or $listing.support_form or $listing.support_forum or $listing.support_phone or $listing.support_aim}
       Support: 
               {if $listing.support_email}<a href="mailto:{$listing.support_email}"><img src="images/smail.gif" border=0 alt="Support E-Mail" title="Support E-Mail" align=absmiddle></a>{/if}
               {if $listing.support_form}<a href="{$listing.support_form}" target=_blank><img src="images/sform.gif" border=0 alt="Support Form" title="Support Form" align=absmiddle></a>{/if}
               {if $listing.support_forum}<a href="{$listing.support_forum}" target=_blank><img src="images/sforum.gif" border=0 alt="Support Forum" title="Support Forum" align=absmiddle></a>{/if}
               {if $listing.support_phone}<img src="images/sphone.gif" border=0 alt="Phone: {$listing.support_phone}" title="Phone: {$listing.support_phone}" align=absmiddle>{/if}
               {if $listing.support_aim}<img src="images/smsn.gif" border=0 alt="{$listing.support_aim}" title="{$listing.support_aim}" align=absmiddle>{/if}
       <br>
{/if}
       Added: <b>{$listing.added}</b><br>
       <br>
     </td>
    </tr>
    <tr>
      <td colspan=3>{$listing.description}</td>
    </tr>
    <tr>
      <td colspan=3>{section name=p loop=$listing.payments}<img src="images/{$listing.payments[p].system}.gif" align=absmiddle alt="{$listing.payments[p].system}" title="{$listing.payments[p].system}"> {/section}</td>
    </tr>
   </table>
  </td></tr></table>
