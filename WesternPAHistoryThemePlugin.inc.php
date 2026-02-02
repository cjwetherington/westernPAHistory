<?php

/**
 * @file plugins/themes/default/WesternPAHistoryThemePlugin.inc.php
 *
 * @class WesternPAHistoryThemePlugin
 *
 * @brief HealthSciences theme extension for Western PA History journal
 */
import('lib.pkp.classes.plugins.ThemePlugin');

class WesternPAHistoryThemePlugin extends ThemePlugin {
	/**
	 * Initialize the theme's styles, scripts and hooks. This is only run for
	 * the currently active theme.
	 *
	 * @return null
	 */
	public function init() {
		$this->setParent('healthsciencesthemeplugin');
		$this->modifyStyle('stylesheet', array('addLess' => array('styles/westernPAHistory.css')));
	}

	/**
	 * Get the display name of this plugin
	 * @return string
	 */
	function getDisplayName() {
		return 'Western PA History';
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return 'A child of the Health Sciences theme providing custom layout and styling for the Western PA History journal.';
	}
}

?>
