[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign}]

<script type="text/javascript">
    <!--
    window.onload = function () {
        [{if $updatelist == 1}]
        top.oxid.admin.updateList('[{$oxid}]');
        [{/if}]
    }

    function DeletePic(fieldName) {
        var oForm = document.getElementById("myedit");
        oForm.fnc.value = "deletePicture";
        oForm.masterPictureField.value = fieldName;

        oForm.submit();
    }

    //-->
</script>

<style>
    .flex-container {
        display: flex;
        flex-flow: row wrap;
        padding: 0 0 0 2rem;
        gap: 1rem;
    }

    .figure-img {
        line-height: 1;
        width: 100%;
        height: auto;
        max-width: fit-content;
    }

    .figure {
        margin: 0 0 1.5rem;
        width: 48%;
    }

    .figure-caption {
        font-size: 1.3em;
        margin-bottom: .25rem;
    }
</style>

[{if $readonly}]
[{assign var="readonly" value="readonly disabled"}]
[{else}]
[{assign var="readonly" value=""}]
[{/if}]

<form name="transfer" id="transfer" action="[{$oViewConf->getSelfLink()}]" method="post">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="oxid" value="[{$oxid}]">
    <input type="hidden" name="oxidCopy" value="[{$oxid}]">
    <input type="hidden" name="cl" value="manufacturer_picture">
    <input type="hidden" name="language" value="[{$actlang}]">
</form>

<form name="myedit" id="myedit" enctype="multipart/form-data" action="[{$oViewConf->getSelfLink()}]" method="post">
    <input type="hidden" name="MAX_FILE_SIZE" value="[{$iMaxUploadFileSize}]">
    [{$oViewConf->getHiddenSid()}]
    <input type="hidden" name="cl" value="manufacturer_picture">
    <input type="hidden" name="fnc" value="">
    <input type="hidden" name="oxid" value="[{$oxid}]">
    <input type="hidden" name="voxid" value="[{$oxid}]">
    <input type="hidden" name="oxparentid" value="[{$oxparentid}]">
    <input type="hidden" name="editval[oxmanufacturers__oxid]" value="[{$oxid}]">
    <input type="hidden" name="language" value="[{$actlang}]">
    <input type="hidden" name="masterPictureField" value="">

    [{if $oViewConf->isAltImageServerConfigured()}]
    <div class="warning">[{oxmultilang ident="ALTERNATIVE_IMAGE_SERVER_NOTE"}] [{oxinputhelp ident="HELP_ALTERNATIVE_IMAGE_SERVER_NOTE"}]</div>
    [{/if}]

    <table border="0" width="98%">
        <tr>
            <td valign="top" class="edittext" style="width: 50%;">
                <table cellspacing="0" cellpadding="0" border="0">
                    <colgroup>
                        <col width="18%">
                        <col width="22%">
                        <col width="60%">
                    </colgroup>
                    [{block name="admin_manufacturer_picture_form"}]
                    <tr>
                        <td class="edittext">
                            [{oxmultilang ident="GENERAL_ICON"}]
                        </td>
                        <td class="edittext">
                            <label>
                                <input type="text" class="editinput" size="25" maxlength="[{$edit->oxmanufacturers__oxicon->fldmax_length}]" name="editval[oxmanufacturers__oxicon]" value="[{$edit->oxmanufacturers__oxicon->value}]" [{$readonly}]>
                            </label>
                            [{oxinputhelp ident="HELP_GENERAL_ICON"}]
                        </td>
                        <td class="edittext" style="text-align: right">
                            [{if !($edit->oxmanufacturers__oxicon->value=="nopic.jpg" || $edit->oxmanufacturers__oxicon->value=="" || $edit->oxmanufacturers__oxicon->value=="nopic_ico.jpg")}]
                            <a href="Javascript:DeletePic('oxicon');" class="delete" style="float: none; display: inline-block" [{include file="help.tpl" helpid="item_delete"}]></a>
                            [{/if}]
                            <input class="editinput" name="myfile[MICO@oxmanufacturers__oxicon]" type="file" size="26" [{$readonly}] accept="image/*">
                            ([{oxmultilang ident="GENERAL_MAX_FILE_UPLOAD"}] [{$sMaxFormattedFileSize}], [{oxmultilang ident="GENERAL_MAX_PICTURE_DIMENSIONS"}])
                        </td>
                    </tr>

                    <tr>
                        <td class="edittext">
                            [{oxmultilang ident="MANUFACTURER_PICTURE_ICON_ALT"}]
                        </td>
                        <td class="edittext">
                            <input type="text" class="editinput" size="25" maxlength="[{$edit->oxmanufacturers__oxicon_alt->fldmax_length}]" name="editval[oxmanufacturers__oxicon_alt]" value="[{$edit->oxmanufacturers__oxicon_alt->value}]" [{$readonly}]>
                            [{oxinputhelp ident="HELP_MANUFACTURER_PICTURE_ICON_ALT"}]
                        </td>
                        <td class="edittext" style="text-align: right">
                            [{if !($edit->oxmanufacturers__oxicon_alt->value=="nopic.jpg" || $edit->oxmanufacturers__oxicon_alt->value=="" || $edit->oxmanufacturers__oxicon_alt->value=="nopic_ico.jpg")}]
                            <a href="Javascript:DeletePic('oxicon_alt');" class="delete" style="float: none; display: inline-block" [{include file="help.tpl" helpid="item_delete"}]></a>
                            [{/if}]
                            <input class="editinput" name="myfile[MICO@oxmanufacturers__oxicon_alt]" type="file" size="26" [{$readonly}] accept="image/*">
                            ([{oxmultilang ident="GENERAL_MAX_FILE_UPLOAD"}] [{$sMaxFormattedFileSize}], [{oxmultilang ident="GENERAL_MAX_PICTURE_DIMENSIONS"}])
                        </td>
                    </tr>

                    <tr>
                        <td class="edittext">
                            [{oxmultilang ident="MANUFACTURER_PICTURE_PICTURE"}]
                        </td>
                        <td class="edittext">
                            <input type="text" class="editinput" size="25" maxlength="[{$edit->oxmanufacturers__oxpicture->fldmax_length}]" name="editval[oxmanufacturers__oxpicture]" value="[{$edit->oxmanufacturers__oxpicture->value}]" [{$readonly}]>
                            [{oxinputhelp ident="HELP_MANUFACTURER_PICTURE_PICTURE"}]
                        </td>
                        <td class="edittext" style="text-align: right">
                            [{if !($edit->oxmanufacturers__oxpicture->value=="nopic.jpg" || $edit->oxmanufacturers__oxpicture->value=="" || $edit->oxmanufacturers__oxpicture->value=="nopic_ico.jpg")}]
                            <a href="Javascript:DeletePic('oxpicture');" class="delete" style="float: none; display: inline-block" [{include file="help.tpl" helpid="item_delete"}]></a>
                            [{/if}]
                            <input class="editinput" name="myfile[MPIC@oxmanufacturers__oxpicture]" type="file" size="26" [{$readonly}] accept="image/*">
                            ([{oxmultilang ident="GENERAL_MAX_FILE_UPLOAD"}] [{$sMaxFormattedFileSize}], [{oxmultilang ident="GENERAL_MAX_PICTURE_DIMENSIONS"}])
                        </td>
                    </tr>

                    <tr>
                        <td class="edittext">
                            [{oxmultilang ident="MANUFACTURER_PICTURE_THUMBNAIL"}]
                        </td>
                        <td class="edittext">
                            <input type="text" class="editinput" size="25" maxlength="[{$edit->oxmanufacturers__oxthumbnail->fldmax_length}]" name="editval[oxmanufacturers__oxthumbnail]" value="[{$edit->oxmanufacturers__oxthumbnail->value}]" [{$readonly}]>
                            [{oxinputhelp ident="HELP_MANUFACTURER_PICTURE_THUMBNAIL"}]
                        </td>
                        <td class="edittext" style="text-align: right">
                            [{if !($edit->oxmanufacturers__oxthumbnail->value=="nopic.jpg" || $edit->oxmanufacturers__oxthumbnail->value=="" || $edit->oxmanufacturers__oxthumbnail->value=="nopic_ico.jpg")}]
                            <a href="Javascript:DeletePic('oxthumbnail');" class="delete" style="float: none; display: inline-block" [{include file="help.tpl" helpid="item_delete"}]></a>
                            [{/if}]
                            <input class="editinput" name="myfile[MTHU@oxmanufacturers__oxthumbnail]" type="file" size="26" [{$readonly}] accept="image/*">
                            ([{oxmultilang ident="GENERAL_MAX_FILE_UPLOAD"}] [{$sMaxFormattedFileSize}], [{oxmultilang ident="GENERAL_MAX_PICTURE_DIMENSIONS"}])
                        </td>
                    </tr>

                    <tr>
                        <td class="edittext">
                            [{oxmultilang ident="MANUFACTURER_PICTURE_PROMOTION_ICON"}]
                        </td>
                        <td class="edittext">
                            <input type="text" class="editinput" size="25" maxlength="[{$edit->oxmanufacturers__oxpromotion_icon->fldmax_length}]" name="editval[oxmanufacturers__oxpromotion_icon]" value="[{$edit->oxmanufacturers__oxpromotion_icon->value}]" [{$readonly}]>
                            [{oxinputhelp ident="HELP_MANUFACTURER_PICTURE_PROMOTION_ICON"}]
                        </td>
                        <td class="edittext" style="text-align: right">
                            [{if !($edit->oxmanufacturers__oxpromotion_icon->value=="nopic.jpg" || $edit->oxmanufacturers__oxpromotion_icon->value=="" || $edit->oxmanufacturers__oxpromotion_icon->value=="nopic_ico.jpg")}]
                            <a href="Javascript:DeletePic('oxpromotion_icon');" class="delete" style="float: none; display: inline-block" [{include file="help.tpl" helpid="item_delete"}]></a>
                            [{/if}]
                            <input class="editinput" name="myfile[MPICO@oxmanufacturers__oxpromotion_icon]" type="file" size="26" [{$readonly}] accept="image/*">
                            ([{oxmultilang ident="GENERAL_MAX_FILE_UPLOAD"}] [{$sMaxFormattedFileSize}], [{oxmultilang ident="GENERAL_MAX_PICTURE_DIMENSIONS"}])
                        </td>
                    </tr>
                    [{/block}]

                    <tr>
                        <td class="edittext" colspan="3" style="text-align: center; padding: 2rem 0;">
                            <input type="submit" class="edittext" id="oLockButton" name="saveArticle" value="[{oxmultilang ident="GENERAL_SAVE"}]"
                                   onClick="Javascript:document.myedit.fnc.value='save'" [{$readonly}] [{if !$edit->oxmanufacturers__oxtitle->value && !$oxparentid}]disabled[{/if}] [{$readonly}]>
                            <br>
                        </td>
                    </tr>

                </table>
            </td>
            <td valign="top" style="width: 50%;">
                <div class="flex-container">
                    [{if !($edit->oxmanufacturers__oxicon->value=="nopic.jpg" || $edit->oxmanufacturers__oxicon->value=="" || $edit->oxmanufacturers__oxicon->value=="nopic_ico.jpg")}]
                    <figure class="figure">
                        <figcaption class="figure-caption">[{oxmultilang ident="GENERAL_ICON"}]</figcaption>
                        <img src="[{$edit->getIconUrl()}]" alt="[{$edit->oxmanufacturers__oxicon->value}]" class="figure-img img-fluid">
                    </figure>
                    [{/if}]

                    [{if !($edit->oxmanufacturers__oxicon_alt->value=="nopic.jpg" || $edit->oxmanufacturers__oxicon_alt->value=="" || $edit->oxmanufacturers__oxicon_alt->value=="nopic_ico.jpg")}]
                    <figure class="figure">
                        <figcaption class="figure-caption">[{oxmultilang ident="MANUFACTURER_PICTURE_ICON_ALT"}]</figcaption>
                        <img src="[{$edit->getIconAltUrl()}]" alt="[{$edit->oxmanufacturers__oxicon_alt->value}]" class="figure-img img-fluid">
                    </figure>
                    [{/if}]

                    [{if !($edit->oxmanufacturers__oxpicture->value=="nopic.jpg" || $edit->oxmanufacturers__oxpicture->value=="" || $edit->oxmanufacturers__oxpicture->value=="nopic_ico.jpg")}]
                    <figure class="figure">
                        <figcaption class="figure-caption">[{oxmultilang ident="MANUFACTURER_PICTURE_PICTURE"}]</figcaption>
                        <img src="[{$edit->getPictureUrl()}]" alt="[{$edit->oxmanufacturers__oxpicture->value}]" class="figure-img img-fluid">
                    </figure>
                    [{/if}]

                    [{if !($edit->oxmanufacturers__oxthumbnail->value=="nopic.jpg" || $edit->oxmanufacturers__oxthumbnail->value=="" || $edit->oxmanufacturers__oxthumbnail->value=="nopic_ico.jpg")}]
                    <figure class="figure">
                        <figcaption class="figure-caption">[{oxmultilang ident="MANUFACTURER_PICTURE_THUMBNAIL"}]</figcaption>
                        <img src="[{$edit->getThumbnailUrl()}]" alt="[{$edit->oxmanufacturers__oxthumbnail->value}]" class="figure-img img-fluid">
                    </figure>
                    [{/if}]

                    [{if !($edit->oxmanufacturers__oxpromotion_icon->value=="nopic.jpg" || $edit->oxmanufacturers__oxpromotion_icon->value=="" || $edit->oxmanufacturers__oxpromotion_icon->value=="nopic_ico.jpg")}]
                    <figure class="figure">
                        <figcaption class="figure-caption">[{oxmultilang ident="MANUFACTURER_PICTURE_PROMOTION_ICON"}]</figcaption>
                        <img src="[{$edit->getPromotionIconUrl()}]" alt="[{$edit->oxmanufacturers__oxpromotion_icon->value}]" class="figure-img img-fluid">
                    </figure>
                    [{/if}]
                </div>
            </td>
        </tr>
    </table>

</form>

[{include file="bottomnaviitem.tpl"}]
[{include file="bottomitem.tpl"}]
