$(document).ready(function () {
	//find active url in menu
	var $curURL = "/" + location.pathname.split("/")[1];
	var $tableURL;
    //alert($curURL);
	$('.menu').each(function() {
		var $linkHref = $(this).find('a').attr('href');
		$tableURL = location.pathname.split("/")[2];
		if (($curURL == $linkHref) || ($curURL + "/" == $linkHref) && ($tableURL != "table")){
			$(this).addClass('active');
		}

		if (($curURL == "/tournaments") && ($linkHref == "#")){
			$(this).addClass('active');
		}

		if(($tableURL == 'table') && ($linkHref == "/tournaments/table/")){
			$(this).addClass('active');
		}
	});

});

