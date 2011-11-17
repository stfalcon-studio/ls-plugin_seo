{strip}
{* KEYWORDS *}
        {if count($aTopics)>0}
                {* Список топиков: теги топиков *}
                {foreach from=$aTopics item=oTopic}
                        {$oTopic->getTags()|strip_tags|escape:'html'},
                {/foreach}
        {elseif $oBlog}
                {* На странице блога: название блога, стандартные ключевые слова *}
                {$oBlog->getTitle()|strip_tags|escape:'html'}, {$sHtmlKeywords}
        {elseif $oTopic}
                {* На странице топика: название топика, теги *}
                {$oTopic->getTitle()|strip_tags|escape:'html'}, {$oTopic->getTags()|escape:'html'}
        {else}
                {* На остальных страницах: стандартные ключевые слова *}
                {$sHtmlKeywords}
        {/if}
{/strip}