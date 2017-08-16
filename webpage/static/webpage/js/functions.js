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


function createTreeOverlay(name, title, multiple=false) {
    $("#" + name + "Overlay").click(function () {
        $("#" + name + "Dialog").dialog("close");
    });
    $("#" + name + "Button").click(function () {
        $("#" + name + "Overlay").height($(window).height());
        $("#" + name + "Overlay").width($(window).width());
        $("#" + name + "Overlay").fadeTo(1, 0.6);
        $("#" + name + "Dialog").dialog({
            position: {my: "center top", at: "center top+80", of: window},
            closeText: "X",
            title: title,
            closeOnEscape: true,
            width: "auto",
            height: "auto",
            close: function () {
                if (multiple) {
                    selectFromTreeMulti(name);
                }
                $("#" + name + "Overlay").css("display", "none");
            }
        });
    });
}

function selectFromTreeMulti(name) {
    var ids = $('#' + name + 'Tree').jstree('get_selected');
    var checkedNames = '';
    ids.forEach(function (item, index, array) {
        var node = $('#' + name + 'Tree').jstree().get_node(item);
        checkedNames += node['text'] + "<br/>";
    });
    $("#" + name + "Id").val(ids);
    $("#" + name + "Selection").html(checkedNames);
}




/* Piwik */
var _paq = _paq || [];
/* tracker methods like "setCustomDimension" should be called before "trackPageView" */
_paq.push(['trackPageView']);
_paq.push(['enableLinkTracking']);
(function() {
    var u="//clarin.oeaw.ac.at/";
    _paq.push(['setTrackerUrl', u+'piwik/piwik.php']);
    _paq.push(['setSiteId', '64']);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik/piwik.js'; s.parentNode.insertBefore(g,s);
})();

/* cookie consent */
window.cookieconsent_options = {
    "message":"This website uses cookies to ensure you get the best experience on our website",
    "dismiss":"Got it!",
    "learnMore":"More info",
    "link":"{% url 'webpage:imprint' %}",
    "theme":"dark-bottom"};
