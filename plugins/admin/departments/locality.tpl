<!--////////////////////
  //  LOCALITY (l)
    //////////////////// -->

<table style="width:100%; vertical-align:top; text-align:left;" cellpadding=4>
 <tr>
   <td style="vertical-align:top; width:50%">
     <h2><img class="center" alt="" src="images/rightarrow.png"> {t}Properties{/t}</h2>
     <table>
      <tr>
       <td><LABEL for="l">{t}Locality name{/t}</LABEL>{$must}</td>
       <td>
{render acl=$lACL}
      <input type='text' id="l" name="l" size=25 maxlength=60 value="{$l}" title="{t}Name of locality to create{/t}">
{/render}
       </td>
      </tr>
      <tr>
       <td><LABEL for="description">{t}Description{/t}</LABEL>{$must}</td>
       <td>
{render acl=$descriptionACL}
        <input type='text' id="description" name="description" size=25 maxlength=80 value="{$description}" title="{t}Descriptive text for department{/t}">
{/render}
       </td>
      </tr>
  {if !$is_root_dse}
      <tr>
        <td><LABEL for="base">{t}Base{/t}</LABEL>{$must}</td>
        <td>
{render acl=$baseACL}
          {$base}
{/render}
    </td>
   </tr>
  {/if}

    <tr>
     <td><label for="manager">{t}Manager{/t}</label></td>
     <td>
{render acl=$managerACL}
        <input type='text' name='manager_name' id='manager_name' value='{$manager_name}' disabled
          title='{$manager}'>
{/render}
{render acl=$managerACL}
        <input type='image' src='images/lists/edit.png' name='editManager' class='center'>
{/render}
        {if $manager!=""}
{render acl=$managerACL}
        <img src='images/info_small.png' title='{$manager}' class='center'>
{/render}
{render acl=$managerACL}
        <input type='image' src='images/lists/trash.png' name='removeManager' class='center'>
{/render}
        {/if}
     </td>
    </tr>
  </table>
  </td>
 </tr>
</table>
<input type='hidden' name='dep_generic_posted' value='1'>
