'use strict';

define('admin/plugins/theme-grinnellian', ['settings'], function (Settings) {
    var ACP = {};

    ACP.init = function () {
        Settings.load('harmony', $('.harmony-settings'));

        $('#save').on('click', function () {
            Settings.save('harmony', $('.harmony-settings'));
        });
    };

    return ACP;
});
