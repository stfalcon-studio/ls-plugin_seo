{strip}
{* DESCRIPTION *}
        {$sHtmlDescription}.
        {if count($aTopics)>0}
                {* Список топиков: заголовки топиков *}
                {foreach from=$aTopics item=oTopic}
                        {$oTopic->getTitle()|strip_tags|escape:'html'}.
                {/foreach}
        {/if}

{/strip}