// function alignMenuItems(){
//     var totEltWidth = 0;
//     var menuWidth = $('#nav > ul')[0].offsetWidth;
//     var availableWidth = 0;
//     var space = 0;

//     var elts = $('#nav > ul > li');
//     elts.each(function(inx, elt) {
//         // reset paddding to 0 to get correct offsetwidth
//         $(elt).css('padding-left', '0px');
//         $(elt).css('padding-right', '0px');

//         totEltWidth += elt.offsetWidth;
//     });

//     availableWidth = menuWidth - totEltWidth;

//     space = availableWidth/(elts.length);

//     elts.each(function(inx, elt) {
//         $(elt).css('padding-left', space/2 + 'px');
//     });
// }

// $(document).ready(function () {
//     alignMenuItems();
// });