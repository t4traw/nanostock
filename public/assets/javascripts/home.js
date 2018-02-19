// HomeController
function custom_parse_int(n) {
  n = parseInt(n);
  return isNaN(n) ? '': n;
}
function custom_parse_float(n) {
  n = parseFloat(n);
  return isNaN(n) ? '': n.toString().replace(/\.+0+$/, '');
}
function get_enterd_sku() {
  return $("#enterd_sku").val().trim();
}
function sku_tomato(pure, alias) {
  var enterd_sku = get_enterd_sku();

  if (pure.indexOf(enterd_sku) >= 0)  {
    return 'pure';  // pure SKU

  } else if (alias.indexOf(enterd_sku) >= 0) {
    return 'alias'; // alias SKU

  } else {
    return  false; // tomato SKU
  }
}
$("#enterd_sku").change(function(){
  var enterd_sku = get_enterd_sku();

  if (enterd_sku.length > 0) $.ajax({
    type: "GET",
    url: "/show/" + encodeURIComponent(enterd_sku),
    dataType: "json",
    success: function(data) {
      $('tbody#products').html('');

      $.each(data, function(i, val) {
        var tomato = sku_tomato(val['sku'], val['sku_alias']);

        if (!tomato) return true

        var tr = '';
        if (tomato == 'pure' || tomato == 'alias') tr = '<tr class="' + tomato + '_sku">'; // add class

        var icon = ''
        if (tomato == 'pure') icon = '<img src="/assets/images/star.png" width="12px"> ';
        // if (tomato == 'pure') icon = '<span class="glyphicon glyphicon-star"></span>';

        var html = tr +
          '<td>' + icon + val['sku'] + '</td>' +
          '<td>' + val['name'] + '</td>' +
          '<td>' + custom_parse_int(val['stock']) + '</td>' +
          '<td class="data-stock">' +
            '<span class="form-group">' +
              '<input class="form-control form-control-sm" type="text" value="">' +
            '</span>' +
          '</td>' +
          '<td>' + custom_parse_float(val['sell']) + '</td>' +
          '<td>' + custom_parse_float(val['buy']) + '</td>' +
          '<td>' + custom_parse_int(val['lot']) + '</td>' +
          '<td class="data-sku-alias">' + val['sku_alias'] + '</td>' +
        "</tr>\n";
        $('tbody#products').append(html);

        console.log('----- tomato -----');
        console.log('tomato: ' + tomato);
        console.log('----- html -----');
        console.log(html);
      });
    },
    error: function(data) {
      console.log('Ajax error.');
      console.log('----- data -----');
      console.log(data);
    }
  });
});

