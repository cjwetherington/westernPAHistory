{**
 * templates/frontend/pages/error.tpl
 *
 * Copyright (c) 2014-2020 Simon Fraser University
 * Copyright (c) 2000-2020 John Willinsky
 *
 * Generic error page.
 * Displays a simple error message and (optionally) a return link.
 *}
{include file="frontend/components/header.tpl"}

<main id="main-content" role="main">
	<div class="container page-error">
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
					{translate key=$errorMsg params=$errorParams}
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
