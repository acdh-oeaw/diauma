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
        featureClasses = ['A', 'H', 'L', 'P', 'R', 'T', 'U', 'V']; // Feature classes to search against. See: http://www.geonames.org/export/codes.html

        request_url = 'https://secure.geonames.org/searchJSON?q=' + question;
        request_url += '&maxRows=' + max_rows;
        request_url += '&username=' + username;
        request_url += '&style=LONG&isNameRequired=true';
        request_url += '&' + featureClasses.map(function (fc) {
            return 'featureClass=' + fc
        }).join('&');

        $.ajax({
            url: request_url,
            success: function(data){
                if (Object.keys(data.geonames).length > 0) {
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
});
