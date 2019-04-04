<form id="install" action="?" method="post">

    <div class="content-wrap">

        <div class="welcome_text">
            <h2>{$_lang.welcome}</h2>
            <p>{$_lang.welcome_message}</p>
        </div>

        {if $restarted}
        <br class="clear" />
        <br class="clear" />
        <p class="note">{$_lang.restarted_msg}</p>
        {/if}

        <div class="select_lang">
            <p class="title">{$_lang.choose_language}: <br>
                <select name="language" autofocus="autofocus">
                    {$languages}
                </select>
            </p>
        </div>
    </div>

    <div class="setup_navbar">
        <input type="submit" name="proceed" id="modx-next" class="button" value="{$_lang.next} >" />
    </div>

</form>
