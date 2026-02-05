{**
 * templates/frontend/pages/privacy.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2003-2020 John Willinsky
 *
 * @brief Display the page to view the privacy policy.
 *
 * @uses $currentContext Journal|Press The current journal or press
 *}
{include file="frontend/components/header.tpl" pageTitle="manager.setup.privacyStatement"}

<main id="main-content" role="main">
    <div class="container page-privacy">
        <div class="row page-header justify-content-md-center">
            <div class="col-md-8">
                <h1>{translate key="manager.setup.privacyStatement"}</h1>
            </div>
        </div>
        <div class="row justify-content-md-center">
            <div class="col-md-8">
                <div class="page-content">
                    {$currentContext->getLocalizedSetting('privacyStatement')}
                </div>
            </div>
        </div>
    </div>
</main>

{include file="frontend/components/footer.tpl"}
