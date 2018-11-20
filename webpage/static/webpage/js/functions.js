$(document).ready(function () {

    $.jstree.defaults.core.themes.dots = false;

    /* workaround for bootstraps inability to open tabs with a direct link */
    var hash = window.location.hash;
    if (hash) {
        $(hash).addClass('active');
        $(hash + '-tab-header').addClass('active');
    } else {
        $('#tabs a:first').tab('show')
    }
    /* end bootstrap workaround */
    $('.date').datepicker({
        showOn: 'button',
        buttonImageOnly: true,
        buttonImage: '/static/webpage/img/icon_calendar.gif',
        dateFormat:'yy-mm-dd',
        firstDay:1
    });
    $('form').each(function() {
        $(this).validate({
            errorClass: 'error',
            rules: {
                name: {required: true},
            }
        });
    });
})

/* write tab target to url */
$(function(){
    var hash = window.location.hash;
    hash && $('ul.nav a[href="' + hash + '"]').tab('show');
    $('.nav-tabs a').click(function (e) {
        $(this).tab('show');
        window.location.hash = this.hash;
    });
});

function select_language(language_code) {
    $('#language').val(language_code);
    $('#language-form').submit();
}

function createTreeOverlay(name, title, multiple=false) {
    $('#' + name + '-overlay').click(function () {
        $('#' + name + '-dialog').dialog('close');
    });
    $('#' + name + '-button').click(function () {
        $('#' + name + '-overlay').height($(window).height());
        $('#' + name + '-overlay').width($(window).width());
        $('#' + name + '-overlay').fadeTo(1, 0.6);
        $('#' + name + '-dialog').dialog({
            position: {my: 'center top', at: 'center top+80', of: window},
            closeText: 'X',
            title: title,
            closeOnEscape: true,
            width: 'auto',
            height: 'auto',
            close: function () {
                if (multiple) {
                    selectFromTreeMulti(name);
                }
                $('#' + name + '-overlay').css('display', 'none');
            },
            open: function() {
                $(this).closest(".ui-dialog")
                    .find(".ui-dialog-titlebar-close")
                    .removeClass("ui-dialog-titlebar-close")
                    .html("<span style='float:right;'>X</span>");
            }
        });
    });
}

function selectFromTreeMulti(name) {
    var ids = $('#' + name + '-tree').jstree('get_selected');
    var checkedNames = '';
    ids.forEach(function (item, index, array) {
        var node = $('#' + name + '-tree').jstree().get_node(item);
        checkedNames += node['text'] + '<br/>';
    });
    $('#' + name + '-id').val(ids);
    $('#' + name + '-selection').html(checkedNames);
}

function selectFromTree(name, id, text) {
    $('#id_parent').val(id)
    $('#' + name + '-button').val(text);
    $('#' + name + '-dialog').dialog('close');
    $('#' + name + '-clear').show();
}

/* Piwik */
var _paq = _paq || [];
/* tracker methods like 'setCustomDimension' should be called before 'trackPageView' */
_paq.push(['trackPageView']);
_paq.push(['enableLinkTracking']);
(function() {
    var u='//clarin.oeaw.ac.at/';
    _paq.push(['setTrackerUrl', u+'piwik/piwik.php']);
    _paq.push(['setSiteId', '64']);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'piwik/piwik.js'; s.parentNode.insertBefore(g,s);
})();

/* Cookie consent */
window.cookieconsent_options = {
    'message':'This website uses cookies to ensure you get the best experience on our website',
    'dismiss':'Got it!',
    'learnMore':'More info',
    'link':'/imprint',
    'theme':'dark-bottom'};
