[{$smarty.block.parent}]
<tr>
    <td class="edittext" width="120">
    [{oxmultilang ident="GENERAL_ACTIVE"}]
    </td>
    <td class="edittext">
    <input class="edittext" type="checkbox" name="editval[oxmanufacturers__oxactive]" value='1' [{if $edit->oxmanufacturers__oxactive->value == 1}]checked[{/if}] [{$readonly}]>
    [{oxinputhelp ident="HELP_GENERAL_ACTIVE"}]
    </td>
</tr>
<tr>
    <td class="edittext">
    [{oxmultilang ident="GENERAL_TITLE"}]
    </td>
    <td class="edittext">
    <input type="text" class="editinput" size="40" maxlength="[{$edit->oxmanufacturers__oxtitle->fldmax_length}]" id="oLockTarget" name="editval[oxmanufacturers__oxtitle]" value="[{$edit->oxmanufacturers__oxtitle->value}]" [{$readonly}]>
    [{oxinputhelp ident="HELP_GENERAL_TITLE"}]
    </td>
</tr>
<tr>
    <td class="edittext">
    [{oxmultilang ident="GENERAL_SHORTDESC"}]
    </td>
    <td class="edittext">
    <input type="text" class="editinput" size="40" maxlength="[{$edit->oxmanufacturers__oxshortdesc->fldmax_length}]" name="editval[oxmanufacturers__oxshortdesc]" value="[{$edit->oxmanufacturers__oxshortdesc->value}]" [{$readonly}]>
    [{oxinputhelp ident="HELP_GENERAL_SHORTDESC"}]
    </td>
</tr>
<tr>
    <td class="edittext">
        [{oxmultilang ident="GENERAL_SORT"}]
    </td>
    <td class="edittext">
    <input type="text" class="editinput" size="25" maxlength="[{$edit->oxmanufacturers__oxtitle->fldmax_length}]" name="editval[oxmanufacturers__oxsort]" value="[{$edit->oxmanufacturers__oxsort->value}]" [{$readonly}]>
    [{oxinputhelp ident="HELP_MANUFACTURER_SORT"}]
    </td>
</tr>
