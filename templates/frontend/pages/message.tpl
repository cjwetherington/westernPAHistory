{**
 * templates/frontend/pages/message.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2000-2020 John Willinsky
 *
 * Generic message page.
 * Displays a simple message and (optionally) a return link.
 *}
{include file="frontend/components/header.tpl"}

<main id="main-content" role="main">
	<div class="container page-message">
		<div class="row page-header justify-content-md-center">
			<div class="col-md-8">
				{if $pageTitle}
					<h1>
						{translate key=$pageTitle}
					</h1>
				{/if}
			</div>
		</div>
		<div class="row justify-content-md-center">
			<div class="col-md-8">
				<div class="description">
					{if $messageTranslated}
						{$messageTranslated}
					{else}
						{translate key=$message}
					{/if}
				</div>
				{if $backLink}
					<div class="cmp_back_link">
						<a href="{$backLink}">{translate key=$backLinkLabel}</a>
					</div>
				{/if}
			</div>
		</div>
	</div>
</main>

{include file="frontend/components/footer.tpl"}
