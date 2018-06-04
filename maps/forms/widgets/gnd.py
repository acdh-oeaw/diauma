# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.forms import widgets
from django.utils.safestring import mark_safe


class GndWidget(widgets.NumberInput):
    """ A widget for a GND Id form field. It searches for the value from an #id_name field."""

    def render(self, name, value, attrs=None, **kwargs):
        final_attrs = self.build_attrs(self.attrs, attrs)
        output = super(GndWidget, self).render(name, value, final_attrs, **kwargs)
        tooltip = "You can search at GND for corresponding entries for the value of the " \
                  "'Name' field. If entries are found you can choose one from a list to " \
                  "automatically fill the 'GND-Id' field."
        output += """
            <div class="table-cell">
                <span id="gnd-switcher" class="button">Show</span>
            </div>
            <div class="gnd-switch" style="width:24em;margin-top:1em;">
                <p class="gnd-switch">
                    <input class="btn btn-primary" id="gnd-search" name="gnd-search"
                        type="button" value="{label}" />
                    </input>
                    <span class="diauma-tooltip" title="{tooltip}">i</span>
                    <span id="no-results" style="display:none;font-weight:bold;">{no_results}</span>
                    <select id="gnd-select" name="gnd-select"></select>
                </p>
            </div>""".format(
                label='Search in GND',
                tooltip=tooltip,
                no_results='No matching results found at GeoNames.')

        output += """
            <script>
            $(document).ready(function() {
                $('#gnd-select').hide();

                function getName(gnd) {
                    var name = gnd.name;
                    var extraName;
                    name += ' (' + gnd['fcodeName'] + ')';
                    return name;
                }

                $('#gnd-select').change(function() {
                    $('#id_gnd_id').val($(this).val());
                });

                $('#gnd-search').click(function() {
                    $('#no-results').hide();
                    $('#gnd-select').show();
                    $('#gnd-select').empty();
                    label_identifier = 'http://www.w3.org/2000/01/rdf-schema#label'
                    question = $('#id_name').val();
                    url = 'http://enrich.acdh.oeaw.ac.at/entityhub/site/gndPersons/find?name=';
                    url += $('#id_name').val();
                    $.ajax({
                        url: url,
                        success: function(data){
                            if (data.results.length > 0) {
                                $('#geonames-select').append($('<option>', {value: '', text: ''}));
                                $.each(data.results, function(key, value) {
                                    console.log(key);
                                    console.log(value);
                                    $('#gnd-select').append($('<option>', {
                                        value: value.id.split("/").pop(),
                                        text: value[label_identifier][0].value
                                    }));
                                });
                            } else {
                                $('#gnd-select').hide();
                                $('#no-results').show();
                            }
                        },
                        return: false
                    })
                })
            });</script>"""
        return mark_safe(output)
