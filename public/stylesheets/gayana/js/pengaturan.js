/*Autocomplete*/
var availableTags = [
	"Baju",
	"pakaian",
	"Celana",
	"Sepatu",
	"Atasan",
	"Kemeja"
];
$( "#caridisini" ).autocomplete({
	source: availableTags
});

/*Mobile Menu*/


/*OWL Carousel*/
$(document).ready(function() {
	var owl = $("#slidebannerkanan");
	owl.owlCarousel(
		{
			autoPlay : false,
			items :1,
			margin: 10,
			stagePadding: 50,
			lazyLoad : true,
			pagination : false,	
			singleItem : true,
			goToFirstSpeed : 2000,
			autoHeight : true,
			nav:true,
			responsive:true
		}
	);
	// Custom Navigation Events
	$(".nextbnk").click(function(){
		owl.trigger('owl.next');
	})
	$(".prevbnk").click(function(){
		owl.trigger('owl.prev');
	})
});
$(document).ready(function() {
	var owl = $("#slidevoucherdeal");
	owl.owlCarousel(
		{
			autoPlay : false,
			items :4,
			singleItem:false,
			lazyLoad : true,
			pagination : false,	
			goToFirstSpeed : 2000,
			autoHeight : true,
			nav:true,
			responsive:true
		}
	);
	// Custom Navigation Events
	$(".nextvc").click(function(){
		owl.trigger('owl.next');
	})
	$(".prevvc").click(function(){
		owl.trigger('owl.prev');
	})
});
$(document).ready(function() {
	var owl = $("#fashionslider");
	owl.owlCarousel(
		{
			autoPlay : false,
			items :5,
			lazyLoad : true,
			pagination : false,	
			goToFirstSpeed : 2000,
			autoHeight : true,
			nav:true,
			responsive:true
		}
	);
	// Custom Navigation Events
	$("#nextfashion").click(function(){
		owl.trigger('owl.next');
	})
	$("#prevfashion").click(function(){
		owl.trigger('owl.prev');
	})
});
$(document).ready(function() {
	var owl = $("#otherproduk");
	owl.owlCarousel(
		{
			autoPlay : false,
			items :5,
			lazyLoad : true,
			pagination : false,	
			goToFirstSpeed : 2000,
			autoHeight : true,
			nav:true,
			responsive:true
		}
	);
	// Custom Navigation Events
	$("#nextother").click(function(){
		owl.trigger('owl.next');
	})
	$("#prevother").click(function(){
		owl.trigger('owl.prev');
	})
});
$(document).ready(function() {
	var owl = $("#gadgetkomputerslider");
	owl.owlCarousel(
		{
			autoPlay : false,
			items :5,
			lazyLoad : true,
			pagination : false,	
			goToFirstSpeed : 2000,
			autoHeight : true,
			nav:true,
			responsive:true
		}
	);
	// Custom Navigation Events
	$("#nextgadgetkomputer").click(function(){
		owl.trigger('owl.next');
	})
	$("#prevgadgetkomputer").click(function(){
		owl.trigger('owl.prev');
	})
});
$(document).ready(function() {
	var owl = $("#ktxbanner");
	owl.owlCarousel(
		{
			autoPlay : true,
			items :1,
			singleItem:true,
			pagination : true,	
			goToFirstSpeed : 2000,
			autoHeight : true,
			nav:true,
			responsive:true
		}
	);
	// Custom Navigation Events
	$("#nextgadgetkomputer").click(function(){
		owl.trigger('owl.next');
	})
	$("#prevgadgetkomputer").click(function(){
		owl.trigger('owl.prev');
	})
});
$(document).ready(function() {
	var owl = $("#beautyslider");
	owl.owlCarousel(
		{
			autoPlay : false,
			items :5,
			lazyLoad : true,
			pagination : false,	
			goToFirstSpeed : 2000,
			autoHeight : true,
			nav:true,
			responsive:true
		}
	);
	// Custom Navigation Events
	$("#nextbeauty").click(function(){
		owl.trigger('owl.next');
	})
	$("#prevbeauty").click(function(){
		owl.trigger('owl.prev');
	})
});
$(document).ready(function() {
	var owl = $("#elektronikslider");
	owl.owlCarousel(
		{
			autoPlay : false,
			items :5,
			lazyLoad : true,
			pagination : false,	
			goToFirstSpeed : 2000,
			autoHeight : true,
			nav:true,
			responsive:true
		}
	);
	// Custom Navigation Events
	$("#nextelektronik").click(function(){
		owl.trigger('owl.next');
	})
	$("#prevelektronik").click(function(){
		owl.trigger('owl.prev');
	})
});
$(document).ready(function() {
	var owl = $("#brandcarousel");
	owl.owlCarousel(
		{
			autoPlay : false,
			items :6,
			lazyLoad : true,
			pagination : false,	
			goToFirstSpeed : 2000,
			autoHeight : true,
			nav:true,
			responsive:true
		}
	);
	// Custom Navigation Events
	$("#nextbrand").click(function(){
		owl.trigger('owl.next');
	})
	$("#prevbrand").click(function(){
		owl.trigger('owl.prev');
	})
});

/*tabs*/
$(document).ready(function ()
				  {	
	$(document).on('responsive-tabs.initialised', function (event, el)
				   {
		console.log(el);
	});

	$(document).on('responsive-tabs.change', function (event, el, newPanel)
				   {
		console.log(el);
		console.log(newPanel);
	});

	$('[data-responsive-tabs]').responsivetabs(
		{
			initialised : function ()
			{
				console.log(this);
			},

			change : function (newPanel)
			{
				console.log(newPanel);
			}
		});


});
/*Tooltip*/
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip({track: true});   
});
/*Accordeon*/
$(function() {
	$( ".sidebarkategori" ).accordion();
});
/*Showhide*/
$(document).ready(function(){
	$(".showdtkonf").click(function(){
		$(this).parent().children('.wrapdtkonf').slideDown("fast");
		$(this).addClass("hide");
		$(this).parent().children('.hidedtkonf').removeClass("hide");
		return false;
	});
	$(".hidedtkonf").click(function(){
		$(this).parent().children('.wrapdtkonf').slideUp("fast");
		$(this).addClass("hide");
		$(this).parent().children('.showdtkonf').removeClass("hide");
		return false;
	});
});

/*Datepicker*/
$('.datepicker').datepicker();
/*Sidebar*/
$(document).ready(function(){
	$("#btn-SHsidebar").click(function(){
		$("#SHsidebar").slideToggle();
	});
});

/*Modal*/
$(function() {
	function reposition() {
		var modal = $(this),
			dialog = modal.find('.modal-dialog');
		modal.css('display', 'block');

		// Dividing by two centers the modal exactly, but dividing by three 
		// or four works better for larger screens.
		dialog.css("margin-top", Math.max(0, ($(window).height() - dialog.height()) / 2));
	}
	// Reposition when a modal is shown
	$('.modal').on('show.bs.modal', reposition);
	// Reposition when the window is resized
	$(window).on('resize', function() {
		$('.modal:visible').each(reposition);
	});
});

/*Scroll totop*/
$('.isitab section').click(function() {
	$('html,body').animate({scrollTop: $(this).offset().top -100 }, 'slow');
});

/*Showhide address in buyform*/
$(".createnew-opener").click(function(){
	$("#blokpls-newaddress").show(),
	$(".createnew-closer").show(),
	$(".createnew-opener").hide(),
	$(".buynowform.addressblock").hide();
});
$(".createnew-closer").click(function(){
	$("#blokpls-newaddress").hide(),
	$(".createnew-closer").hide(),
	$(".createnew-opener").show(),
	$(".buynowform.addressblock").show();
});
