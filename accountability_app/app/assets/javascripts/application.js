// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap.min


$(document).ready(function () {
  var $billsCon = $("#bills_con")

  @@NYT_bills_url || = ENV["NYT_bills_url"

  $.getJSON(@@NYT_bills_url, function (json) {
    var billdata = JSON.parse(response.body);
    var bill = billdata['results'][0]['bills'];
    console.log(bill);
    bill.forEach(function (bill){
    $('#billsCon').append('<li>bill["title]</li>');

  });
});


    //     $.getJSON("@@NYT_bills_url", function (json) {

//     })
//       .done(function (bill))
//         bills = JSON.parse(response.body)
//         billdata = bill["results"][0]["bills"]

//         billdata.forEach(function (bill) {
//           $billsCon.append(billdata["title"])
//         })

// })

