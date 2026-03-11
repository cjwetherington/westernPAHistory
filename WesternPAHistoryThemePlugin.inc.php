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
	public function init(): void {

		$this->setParent('healthsciencesthemeplugin');
		$this->addStyle('westernPAHistory', 'styles/westernPAHistory.css');

		// Parent theme's color wheel does not ensure proper contrast.
		// Remove it and set compliant values.
		$this->removeOption('baseColour');
		$this->modifyStyle('stylesheet', ['addLessVariables' => '@primary:#cc0033;']);
		$this->modifyStyle('stylesheet', ['addLessVariables' => '@primary-text:#cc0033;']);
		$this->modifyStyle('stylesheet', ['addLessVariables' => '@contrast:#ffffff;']);

		// Remove "more/less" button logic from parent JavaScript and localize.
		$this->removeScript('main');
		$this->addScript('wph', 'js/wph.js');
	}

	/**
	 * Get the display name of this plugin
	 *
	 * @return string
	 */
	function getDisplayName(): string {

		return 'Western PA History';
	}

	/**
	 * Get the description of this plugin
	 *
	 * @return string
	 */
	function getDescription(): string {

		return 'A child of the Health Sciences Theme providing custom layout and styling for the Western PA History journal.';
	}
}

?>
