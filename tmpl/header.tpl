<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>{$settings.site_name}</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<center>
<table width="760" border="0" cellpadding="0" cellspacing="0" height=100%>
  <tr> 
    <td valign=top height=142>
      <table cellspacing=0 cellpadding=0 border=0 width=100% height=142>
	    <tr>
		  <td background="images/ver.gif" bgcolor=#FF8D00 rowspan=2><img src="images/top.gif" width=304 height=142 border="0" align=left></td>
		  <td background="images/ver.gif" bgcolor=#FF8D00 align=center height=112>
<a href="http://www.goldcoders.com"><img src="images/banner.gif" border=0 width=468 height=60></a><br>
		  </td>

	    </tr>
	    <tr>
		  <td bgcolor=#FF8D00 valign=bottom align=right height=30>
<span class=toplink><b>
<a href=?a=home class=toplink>Home</a> &middot; 
<a href=?a=news class=toplink>News</a> &middot; 
<a href=?a=advertise class=toplink>Advertise</a> &middot; 
<a href=?a=support class=toplink>Support</a>&nbsp; &nbsp;
</b></span><br>
<span class=toplink><b>
<a href=?a=new class=toplink>New</a> {if $groups_nav}&middot;{/if}
{section name=g loop=$groups_nav}
 <a href=?type={$groups_nav[g].id} class=toplink>{$groups_nav[g].nav_name}</a> {if $smarty.section.g.last != 1}&middot;{/if}
{/section}
&nbsp;&nbsp;</b></span><br>
                 </td>
 	    </tr>
	  </table>
     </td>
  </tr>
  <tr>
   <td class=DISCLAIMER>
<b>DISCLAIMER</b>: Place your disclaimer here.</td>
  </tr>
  <tr> 
    <td valign="top">
	 <table cellspacing=0 cellpadding=1 border=0 width=100% height=100% class=bgcolor>
	   <tr>
	     <td>
           <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
             <tr class=rightmenu valign="top"> 
              <td width=200 align=center>
{if $settings.textads_box}
{include file="textads_box.tpl"}
{/if}
{if $settings.subscribe_box}
{include file="subscribe_box.tpl"}
{/if}				   
{if $settings.logo_box}
{include file="logo_box.tpl"}
{/if}				   
{if $settings.newlistings_box && $frm.a != 'new'}
{include file="newlistings_box.tpl"}
{/if}				   
{if $settings.news_box && $frm.a != 'news'}
{include file="news_box.tpl"}
{/if}				   
{if $settings.paysystems_box}
{include file="paysystems_box.tpl"}
{/if}				   
{if $settings.partners_box}
{include file="partners_box.tpl"}
{/if}				   
                              
                                   <!-- Image Table: End -->

              </td>
              <td class=line valign="top" width=1><img src=images/q.gif width=1 height=1></td>          
              <td valign="top" width=99%>
            <!-- Main: Start -->
            <table width="100%" height="100%" border="0" cellpadding="10" cellspacing="0" class="forTexts">
              <tr>
                <td width=100% height=100% valign=top>
