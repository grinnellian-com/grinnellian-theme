<nav class="navbar navbar-expand sticky-top bg-body border-bottom px-3 gap-3" style="z-index: 1020;">
    <div class="d-flex align-items-center gap-3 flex-grow-1 overflow-hidden">
        <!-- IMPORT partials/breadcrumbs.tpl -->
    </div>

    <div class="d-flex align-items-center gap-2">
        {{{ if config.loggedIn }}}
        <ul id="logged-in-menu" class="list-unstyled d-flex align-items-center mb-0 gap-2">
            <!-- IMPORT partials/sidebar/logged-in-menu.tpl -->
        </ul>
        {{{ else }}}
        <ul id="logged-out-menu" class="list-unstyled d-flex align-items-center mb-0 gap-2">
            <!-- IMPORT partials/sidebar/logged-out-menu.tpl -->
        </ul>
        {{{ end }}}
    </div>
</nav>
