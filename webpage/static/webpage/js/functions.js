$(document).ready(function () {
    $('.date').datepicker({
        showOn: 'button',
        buttonImageOnly: true,
        buttonImage: '/static/webpage/img/icon_calendar.gif',
        dateFormat:'yy-mm-dd',
        firstDay:1
    });
    $("form").each(function() {
        $(this).validate({
            errorClass: 'error',
            rules: {
                name: {required: true},
            }
        });
    });
})

/* Piwik */
var _paq = _paq || [];
_paq.push(["setCookieDomain", "*.diauma.acdh.oeaw.ac.at"]);
_paq.push(['trackPageView']);
_paq.push(['enableLinkTracking']);
(function() {
    var u="//clarin.oeaw.ac.at/piwik/";
    _paq.push(['setTrackerUrl', u+'piwik.php']);
    _paq.push(['setSiteId', 64]);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
})();

/* cookie consent */
window.cookieconsent_options = {
    "message":"This website uses cookies to ensure you get the best experience on our website",
    "dismiss":"Got it!",
    "learnMore":"More info",
    "link":"{% url 'webpage:imprint' %}",
    "theme":"dark-bottom"};
