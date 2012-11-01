{strip}
{* KEYWORDS *}
        {if count($aTopics)>0}
                {* Список топиков: теги топиков *}
                {foreach from=$aTopics item=oTopic}
                        {$oTopic->getTags()|strip_tags|escape:'html'},
                {/foreach}
        {/if}
        {$sHtmlKeywords}
{/strip}