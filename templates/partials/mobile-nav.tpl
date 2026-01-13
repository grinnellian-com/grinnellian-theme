<div class="bottombar-nav p-2 text-dark bg-light d-flex justify-content-between align-items-center w-100">
	<div class="bottombar-nav-left d-flex gap-1 align-items-center flex-grow-1 justify-content-around">
		{{{ each navigation }}}
		{{{ if @first }}}
			<!-- First 4 items shown directly -->
		{{{ end }}}
		{{{ if ./showInMobileBottomBar }}}
		<a class="nav-link navigation-link d-flex flex-column align-items-center p-2 {{{ if ./active }}}active{{{ end }}}" href="{./route}" title="{./title}" {{{ if ./id }}}id="{./id}"{{{ end }}}{{{ if ./targetBlank }}} target="_blank"{{{ end }}}>
			<span class="position-relative">
				{{{ if ./iconClass }}}
				<i class="fa fa-fw fa-xl {./iconClass}"></i>
				{{{ end }}}
				<span component="navigation/count" class="position-absolute top-0 start-100 translate-middle badge rounded-1 bg-primary {{{ if !./content }}}hidden{{{ end }}}">{./content}</span>
			</span>
		</a>
		{{{ end }}}
		{{{ end }}}

		<!-- More Button -->
		<a class="nav-link navigation-link d-flex flex-column align-items-center p-2" href="#" role="button" data-bs-toggle="offcanvas" data-bs-target="#mobile-nav-offcanvas" aria-controls="mobile-nav-offcanvas">
			<i class="fa fa-fw fa-xl fa-bars"></i>
		</a>
	</div>

    <div class="vr mx-2"></div>

	<div class="bottombar-nav-right d-flex gap-3 align-items-center justify-content-end">
        {{{ if config.loggedIn }}}
            <a class="nav-link position-relative" href="{relative_path}/notifications">
                <i class="fa fa-fw fa-xl fa-bell"></i>
                <span component="notifications/icon" class="position-absolute top-0 start-100 translate-middle badge rounded-1 bg-danger {{{ if !unreadCount.notification }}}hidden{{{ end }}}">{unreadCount.notification}</span>
            </a>
            {{{ if canChat }}}
            <a class="nav-link position-relative" href="{relative_path}/chats">
                <i class="fa fa-fw fa-xl fa-comment"></i>
                <span component="chat/icon" class="position-absolute top-0 start-100 translate-middle badge rounded-1 bg-primary {{{ if !unreadCount.chat }}}hidden{{{ end }}}">{unreadCount.chat}</span>
            </a>
            {{{ end }}}
            <a class="nav-link" href="{relative_path}/user/{user.userslug}">
                {buildAvatar(user, "24px", true)}
            </a>
        {{{ else }}}
            <a class="nav-link" href="{relative_path}/login">
                <i class="fa fa-fw fa-xl fa-sign-in"></i>
            </a>
        {{{ end }}}
	</div>

    <!-- Offcanvas for full menu -->
    <div class="offcanvas offcanvas-bottom h-75" tabindex="-1" id="mobile-nav-offcanvas" aria-labelledby="mobile-nav-offcanvas-label">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="mobile-nav-offcanvas-label">[[global:menu]]</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <ul class="list-unstyled d-flex flex-column gap-2">
                {{{ each navigation }}}
                <li class="nav-item {./class}{{{ if ./dropdown }}} dropend{{{ end }}}" title="{./title}">
                    <a class="nav-link navigation-link d-flex gap-3 align-items-center p-2 rounded-1 {{{ if ./dropdown }}}dropdown-toggle{{{ end }}}" {{{ if ./dropdown }}} href="#" role="button" data-bs-toggle="collapse" data-bs-target="#collapse-target-{@index}" {{{ else }}} href="{./route}"{{{ end }}} {{{ if ./id }}}id="{./id}"{{{ end }}}{{{ if ./targetBlank }}} target="_blank"{{{ end }}}>
                        <span class="d-flex gap-3 align-items-center w-100">
                            {{{ if ./iconClass }}}
                            <i class="fa fa-fw fa-lg {./iconClass}"></i>
                            {{{ end }}}
                            <span class="nav-text fw-semibold">{./text}</span>
                        </span>
                        <span component="navigation/count" class="badge rounded-1 bg-primary {{{ if !./content }}}hidden{{{ end }}}">{./content}</span>
                    </a>
                    {{{ if ./dropdown }}}
                    <div class="ps-4">
                        <ul id="collapse-target-{@index}" class="collapse list-unstyled ps-3">
                            {./dropdownContent}
                        </ul>
                    </div>
                    {{{ end }}}
                </li>
                {{{ end }}}
            </ul>
        </div>
    </div>
</div>