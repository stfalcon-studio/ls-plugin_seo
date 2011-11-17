{strip}
{* DESCRIPTION *}
        {if $oBlog}
                {$oBlog->getTitle()|strip_tags|escape:'html'}:
                {* На странице блога: название блога. описание блога *}
                {$oBlog->getDescription()|strip_tags|escape:'html'}
        {/if}

        {if count($aTopics)>0}
                {* Список топиков: заголовки топиков *}
                {foreach from=$aTopics item=oTopic}
                        {$oTopic->getTitle()|strip_tags|escape:'html'}.
                {/foreach}
        {elseif $oTopic}
                {* На странице топика: название топика. стандартное описание топика *}
                {$oTopic->getTitle()|strip_tags|escape:'html'}. {$sHtmlDescription}
        {else}
                {* На остальных страницах: Блоги. стандартное описание*}
                {$aLang.blogs}. {$sHtmlDescription}
        {/if}

{/strip}