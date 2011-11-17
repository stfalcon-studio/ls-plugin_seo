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

/**
 * Deny direct access to this file
 */
if (!class_exists('Plugin')) {
    die('Hacking attemp!');
}

class PluginSeo extends Plugin {

    /**
     * Plugin Activation
     *
     * @return boolean
     */
    public function Activate() {
        return true;
    }

    /**
     * Plugin Initialization
     *
     * @return void
     */
    public function Init() {
        
    }

}