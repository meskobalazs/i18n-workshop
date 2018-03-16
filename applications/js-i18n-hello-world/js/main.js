define(['i18n!nls/main'], function(l10n) {
    console.log(l10n);
    document.getElementById('hello').textContent = l10n['hello.world'];
})