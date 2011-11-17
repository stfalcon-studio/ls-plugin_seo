<?php

/* ---------------------------------------------------------------------------
 * @Plugin Name: SEO
 * @Plugin URI:
 * @Description: Optimization site for search engines
 * @Author: web-studio stfalcon.com
 * @Author URI: http://stfalcon.com
 * @LiveStreet Version: 0.4.2
 * @License: GNU GPL v3, http://www.gnu.org/licenses/agpl.txt
 * ----------------------------------------------------------------------------
 */

class PluginSeo_HookSeo extends Hook {

    /**
     * Register hooks
     *
     * @return void
     */
    public function RegisterHook() {
        $this->AddHook('template_body_end', 'hook_body_end');
        $this->AddHook('module_viewer_display_before', 'hook_meta');
    }

    /**
     * Meta hook
     *
     * @return void
     */
    public function hook_meta() {
        $sAction = Router::GetAction();
        
        $sMetaDescriptionTemplate = Plugin::GetTemplatePath(__CLASS__) . 'meta/description/' . $sAction . '.tpl';
        if ($this->Viewer_TemplateExists($sMetaDescriptionTemplate)) {
            $sMetaDescription = $this->Viewer_Fetch($sMetaDescriptionTemplate);
            $this->Viewer_Assign("sHtmlDescription", htmlspecialchars($sMetaDescription));
        }

        $sMetaKeywordsTemplate = Plugin::GetTemplatePath(__CLASS__) . 'meta/keywords/' . $sAction . '.tpl';
        if ($this->Viewer_TemplateExists($sMetaKeywordsTemplate)) {
            $sMetaKeywords = $this->Viewer_Fetch($sMetaKeywordsTemplate);
            $this->Viewer_Assign("sHtmlKeywords", htmlspecialchars($sMetaKeywords));
        }

    }

    /**
     * Footer hook
     *
     * @return void
     */
    public function hook_body_end() {
        $sAction = Router::GetAction();
        
        $sTemplatePath = Plugin::GetTemplatePath(__CLASS__) . 'content/body_end/' . $sAction . '.tpl';
        if ($this->Viewer_TemplateExists($sTemplatePath)) {
            return $this->Viewer_Fetch($sTemplatePath);
        }
    }

}