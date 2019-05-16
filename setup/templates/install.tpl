<script type="text/javascript" src="assets/js/sections/install.js"></script>
<form id="install" action="?action=install" method="post">
    <h2>{$_lang.install_summary}</h2>
    {if $failed}
        <p>{$_lang.errors_occurred}</p>
    {else}
    <p>
        {$_lang.install_success}
        <br /><br />
        <a href="javascript:void(0);" class="modx-toggle-success">{$_lang.toggle_success}</a> |
        <a href="javascript:void(0);" class="modx-toggle-warning">{$_lang.toggle_warnings}</a>
    </p>
    {/if}
    <ul class="checklist">
    {foreach from=$results item=result}
        <li class="{$result.class} finalsuccess" {if NOT $failed} style="display: none;" {/if}> {$result.msg} </li>
    {/foreach}
    </ul> <br />
    <div class="setup_navbar">
        {if $failed}
            <button type="button" id="modx-next" class="button" onclick="MODx.go('install');">{$_lang.retry} &#xf054;</button>
            <button type="button" id="modx-back" class="button" onclick="MODx.go('summary');">&#xf053; {$_lang.back}</button>
        {else}
            <input type="submit" id="modx-next" class="button" name="proceed" value="{$_lang.next} &#xf054;" autofocus="autofocus" />
        {/if}
    </div>
</form>
