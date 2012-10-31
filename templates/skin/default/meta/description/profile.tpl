{strip}
{* DESCRIPTION *}
        {if count($aTopics)>0}
                {* Список топиков: теги топиков *}
                {foreach from=$aTopics item=oTopic}
                        {$oTopic->getTitle()|strip_tags|escape:'html'}.
                {/foreach}
         {/if}
         {$sHtmlDescription}
{/strip}