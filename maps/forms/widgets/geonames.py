# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.forms import widgets
from django.utils.safestring import mark_safe
from django.conf import settings


class GeonamesWidget(widgets.NumberInput):
    """ A widget for a GeoNames Id form field. It searches for the value from an #id_name field.
        Fuzzy search can be toggled and search categories selected."""

    def render(self, name, value, attrs=None, **kwargs):
        final_attrs = self.build_attrs(self.attrs, attrs)
        output = super(GeonamesWidget, self).render(name, value, final_attrs, **kwargs)
        codes = ''
        tooltip = "You can search at GeoNames for corresponding entries for the value of the " \
                  "'Name' field. If entries are found you can choose one from a list to " \
                  "automatically fill the 'GeoNamesId' field."
        for code in ['A', 'H', 'L', 'P', 'R', 'S', 'T', 'U', 'V']:
            codes += '''
                <input name="geo_codes" value="{code}" type="checkbox" checked=checked />{code}
                '''.format(code=code)
        output += """
            <div class="table-cell">
                <span id="geonames-switcher" class="button">Show</span>
            </div>
            <div class="geonames-switch" style="width:24em;margin-top:1em;">
                <p class="geonames-switch">
                    <input id="geonames_username" type="hidden" value="{geonames_username}">
                    <input class="btn btn-primary" id="geonames-search" name="geonames-search"
                        type="button" value="{label}" />
                    </input>
                    <span class="diauma-tooltip" title="{tooltip}">i</span>
                    <input id="fuzzy" type="checkbox" /> Fuzzy
                    <p>
                        {codes}
                        <a href="http://www.geonames.org/export/codes.html" target="_blank"
                            rel="noopener">Codes</a>
                    </p>
                    <span id="no-results" style="display:none;font-weight:bold;">{no_results}</span>
                    <select id="geonames-select" name="geonames-select"></select>
                </p>
            </div>""".format(
                geonames_username=settings.GEONAMES_USERNAME,
                label='Search in GeoNames',
                tooltip=tooltip,
                codes=codes,
                no_results='No matching results found at GeoNames.')

        output += """
            <script>
            $(document).ready(function() {
                $('#geonames-select').hide();

                function getName(geoname) {
                    var name = geoname.name;
                    var extraName;
                    ['adminName1', 'countryName'].forEach(function (d) {
                        extraName = geoname[d];
                        if (extraName && extraName != '' && extraName != geoname.name) {
                            name += ', ' + extraName;
                        }
                    }, this);
                    name += ' (' + geoname['fcodeName'] + ')';
                    return name;
                }

                $('#geonames-select').change(function() {
                    $('#id_geonames_id').val($(this).val());
                });

                $('#geonames-search').click(function() {
                    $('#no-results').hide();
                    $('#geonames-select').show();
                    $('#geonames-select').empty();
                    question = $('#id_name').val();
                    max_rows = '12';
                    username = $('#geonames_username').val();
                    fuzzy_search = 0
                    if ($('#fuzzy').prop('checked')) {
                        fuzzy_search = 1
                    }
                    featureClasses = [];
                    $.each($("input[name='geo_codes']:checked"), function() {
                        featureClasses.push($(this).val());
                    });
                    request_url = 'https://secure.geonames.org/searchJSON?q=' + question;
                    request_url += '&maxRows=' + max_rows;
                    request_url += '&username=' + username;
                    request_url += '&style=LONG&isNameRequired=true';
                    request_url += '&fuzzy=' + fuzzy_search;
                    request_url += '&' + featureClasses.map(function (fc) {
                        return 'featureClass=' + fc
                    }).join('&');

                    $.ajax({
                        url: request_url,
                        success: function(data){
                            if (Object.keys(data.geonames).length > 0) {
                                $('#geonames-select').append($('<option>', {value: '', text: ''}));
                                $.each(data, function(key, value) {
                                    if (key == 'geonames') {
                                        value.forEach(function (geoname) {
                                            $('#geonames-select').append($('<option>', {
                                                value: geoname['geonameId'],
                                                text: getName(geoname)
                                            }));
                                        });
                                    }
                                });
                            } else {
                                $('#geonames-select').hide();
                                $('#no-results').show();
                            }
                        },
                        return: false
                    })
                })
            });</script>"""
        return mark_safe(output)
