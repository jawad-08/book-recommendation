$(document).ready(function() {


    let category = "";
    $.post(
        "getbooks.php", {
            category: category,
            // from: from,
            // to: to,
            // categ: categ,
            // size: size,
            // colour: colour,
            // type: type,
            // subtype: subtype,
            // sortby: sortby,
        },
        function(data) {
            if (data != "") {
                $(".single-products").html(data);
            }
        }
    );
});