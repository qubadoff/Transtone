/*
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
*/

const submenue = document.getElementsByClassName("submenu")[0];
 
(function ($) {

	var $window = $(window),
		$head = $('head'),
		$body = $('body');

	// Breakpoints.
	breakpoints({
		xlarge: ['1281px', '1680px'],
		large: ['981px', '1280px'],
		medium: ['737px', '980px'],
		small: ['481px', '736px'],
		xsmall: ['361px', '480px'],
		xxsmall: [null, '360px'],
		'xlarge-to-max': '(min-width: 1681px)',
		'small-to-xlarge': '(min-width: 481px) and (max-width: 1680px)'
	});

	// Stops animations/transitions until the page has ...

	// ... loaded.
	$window.on('load', function () {
		window.setTimeout(function () {
			$body.removeClass('is-preload');
		}, 100);
	});

	// ... stopped resizing.
	var resizeTimeout;

	$window.on('resize', function () {

		// Mark as resizing.
		$body.addClass('is-resizing');

		// Unmark after delay.
		clearTimeout(resizeTimeout);

		resizeTimeout = setTimeout(function () {
			$body.removeClass('is-resizing');
		}, 100);

	});

	// Fixes.

	// Object fit images.
	if (!browser.canUse('object-fit')
		|| browser.name == 'safari')
		$('.image.object').each(function () {

			var $this = $(this),
				$img = $this.children('img');

			// Hide original image.
			$img.css('opacity', '0');

			// Set background.
			$this
				.css('background-image', 'url("' + $img.attr('src') + '")')
				.css('background-size', $img.css('object-fit') ? $img.css('object-fit') : 'cover')
				.css('background-position', $img.css('object-position') ? $img.css('object-position') : 'center');

		});

	// Sidebar.
	var $sidebar = $('#sidebar'),
		$sidebar_inner = $sidebar.children('.inner');

	// Inactive by default on <= large.
	breakpoints.on('<=large', function () {
		$sidebar.addClass('inactive')
	});

	breakpoints.on('>large', function () {
		$sidebar.removeClass('inactive');
	});

	// Hack: Workaround for Chrome/Android scrollbar position bug.
	if (browser.os == 'android'
		&& browser.name == 'chrome')
		$('<style>#sidebar .inner::-webkit-scrollbar { display: none; }</style>')
			.appendTo($head);

	// Toggle.
	$('<a href="#sidebar" class="toggle menu-icon">Toggle</a>')
		.appendTo($sidebar)
		.on('click', function (event) {

            

			// Prevent default.
			event.preventDefault();
			event.stopPropagation();

			// Toggle.
			$sidebar.toggleClass('inactive');
            submenue.style.display = "none"
		});

	// Events.

	// Link clicks.
	$sidebar.on('click', 'a', function (event) {

		// >large? Bail.
		if (breakpoints.active('>large'))
			return;

		// Vars.
		var $a = $(this),
			href = $a.attr('href'),
			target = $a.attr('target');

		// Prevent default.
		event.preventDefault();
		event.stopPropagation();

		// Check URL.
		if (!href || href == '#' || href == '')
			return;

		// Hide sidebar.
		$sidebar.addClass('inactive');

		// Redirect to href.
		setTimeout(function () {

			if (target == '_blank')
				window.open(href);
			else
				window.location.href = href;

		}, 500);

	});

	// Prevent certain events inside the panel from bubbling.
	$sidebar.on('click touchend touchstart touchmove', function (event) {

		// >large? Bail.
		if (breakpoints.active('>large'))
			return;

		// Prevent propagation.
		event.stopPropagation();

	});




	// Hide panel on body click/tap.
	$body.on('click touchend', function (event) {

		// >large? Bail.
		if (breakpoints.active('>large'))
			return;

		// Deactivate.
		$sidebar.addClass('inactive');

	});

	// Scroll lock.
	// Note: If you do anything to change the height of the sidebar's content, be sure to
	// trigger 'resize.sidebar-lock' on $window so stuff doesn't get out of sync.

	$window.on('load.sidebar-lock', function () {

		var sh, wh, st;

		// Reset scroll position to 0 if it's 1.
		if ($window.scrollTop() == 1)
			$window.scrollTop(0);

		$window
			.on('scroll.sidebar-lock', function () {

				var x, y;

				// <=large? Bail.
				if (breakpoints.active('<=large')) {

					$sidebar_inner
						.data('locked', 0)
						.css('position', '')
						.css('top', '');

					return;

				}

				// Calculate positions.
				x = Math.max(sh - wh, 0);
				y = Math.max(0, $window.scrollTop() - x);

				// Lock/unlock.
				if ($sidebar_inner.data('locked') == 1) {

					if (y <= 0)
						$sidebar_inner
							.data('locked', 0)
							.css('position', '')
							.css('top', '');
					else
						$sidebar_inner
							.css('top', -1 * x);

				}
				// else {

				// 	if (y > 0)
				// 		$sidebar_inner
				// 			.data('locked', 1)
				// 			.css('position', 'fixed')
				// 			.css('top', -1 * x);

				// }

			})
			.on('resize.sidebar-lock', function () {

				// Calculate heights.
				wh = $window.height();
				sh = $sidebar_inner.outerHeight() + 30;

				// Trigger scroll.
				$window.trigger('scroll.sidebar-lock');

			})
			.trigger('resize.sidebar-lock');

	});

	// TabMenu
	// const menuBtns = document.querySelectorAll('.menu-btn');
	// const foodItems = document.querySelectorAll('.card-item');

	// let activeBtn = "featured";

	// showFoodMenu(activeBtn);

	// menuBtns.forEach((btn) => {
	// 	btn.addEventListener('click', () => {
	// 		resetActiveBtn();
	// 		showFoodMenu(btn.id);
	// 		btn.classList.add('active-btn');
	// 	});
	// });

	// function resetActiveBtn() {
	// 	menuBtns.forEach((btn) => {
	// 		btn.classList.remove('active-btn');
	// 	});
	// }

	// function showFoodMenu(newMenuBtn) {
	// 	activeBtn = newMenuBtn;
	// 	foodItems.forEach((item) => {
	// 		if (item.classList.contains(activeBtn)) {
	// 			item.style.display = "grid";
	// 		} else {
	// 			item.style.display = "none";
	// 		}
	// 	});
	// }

	$(document).on('click', '.menu-btns .menu-btn', function (e) {
		e.preventDefault();
		let category = $(this).attr('id');
		let blogs = $('.card-item');

		blogs.each(function () {
			if (category == $(this).attr('id')) {
				$(this).parent().fadeIn();
			}
			else {
				$(this).parent().hide();
			}
		})
		if (category == 'all') {
			blogs.parent().fadeIn();
		}
	})



	// Slider-card

	const wrapper = document.querySelector(".wrapper");
	const carousel = document.querySelector(".carousel");
	const firstCardWidth = carousel.querySelector(".card").offsetWidth;
	const arrowBtns = document.querySelectorAll(".wrapper i");
	const carouselChildrens = [...carousel.children];
	let isDragging = false, isAutoPlay = true, startX, startScrollLeft, timeoutId;
	// Get the number of cards that can fit in the carousel at once
	let cardPerView = Math.round(carousel.offsetWidth / firstCardWidth);
	// Insert copies of the last few cards to beginning of carousel for infinite scrolling
	carouselChildrens.slice(-cardPerView).reverse().forEach(card => {
		carousel.insertAdjacentHTML("afterbegin", card.outerHTML);
	});
	// Insert copies of the first few cards to end of carousel for infinite scrolling
	carouselChildrens.slice(0, cardPerView).forEach(card => {
		carousel.insertAdjacentHTML("beforeend", card.outerHTML);
	});
	// Scroll the carousel at appropriate postition to hide first few duplicate cards on Firefox
	carousel.classList.add("no-transition");
	carousel.scrollLeft = carousel.offsetWidth;
	carousel.classList.remove("no-transition");
	// Add event listeners for the arrow buttons to scroll the carousel left and right
	arrowBtns.forEach(btn => {
		btn.addEventListener("click", () => {
			carousel.scrollLeft += btn.id == "left" ? -firstCardWidth : firstCardWidth;
		});
	});
	const dragStart = (e) => {
		isDragging = true;
		carousel.classList.add("dragging");
		// Records the initial cursor and scroll position of the carousel
		startX = e.pageX;
		startScrollLeft = carousel.scrollLeft;
	}
	const dragging = (e) => {
		if (!isDragging) return; // if isDragging is false return from here
		// Updates the scroll position of the carousel based on the cursor movement
		carousel.scrollLeft = startScrollLeft - (e.pageX - startX);
	}
	const dragStop = () => {
		isDragging = false;
		carousel.classList.remove("dragging");
	}
	const infiniteScroll = () => {
		// If the carousel is at the beginning, scroll to the end
		if (carousel.scrollLeft === 0) {
			carousel.classList.add("no-transition");
			carousel.scrollLeft = carousel.scrollWidth - (2 * carousel.offsetWidth);
			carousel.classList.remove("no-transition");
		}
		// If the carousel is at the end, scroll to the beginning
		else if (Math.ceil(carousel.scrollLeft) === carousel.scrollWidth - carousel.offsetWidth) {
			carousel.classList.add("no-transition");
			carousel.scrollLeft = carousel.offsetWidth;
			carousel.classList.remove("no-transition");
		}
		// Clear existing timeout & start autoplay if mouse is not hovering over carousel
		clearTimeout(timeoutId);
		if (!wrapper.matches(":hover")) autoPlay();
	}
	const autoPlay = () => {
		if (window.innerWidth < 800 || !isAutoPlay) return; // Return if window is smaller than 800 or isAutoPlay is false
		// Autoplay the carousel after every 2500 ms
		timeoutId = setTimeout(() => carousel.scrollLeft += firstCardWidth, 2500);
	}
	autoPlay();
	carousel.addEventListener("mousedown", dragStart);
	carousel.addEventListener("mousemove", dragging);
	document.addEventListener("mouseup", dragStop);
	carousel.addEventListener("scroll", infiniteScroll);
	wrapper.addEventListener("mouseenter", () => clearTimeout(timeoutId));
	wrapper.addEventListener("mouseleave", autoPlay);





	// Menu.
	var $menu = $('#menu'),
		$menu_openers = $menu.children('ul').find('.opener');

	// Openers.
	$menu_openers.each(function () {

		var $this = $(this);

		$this.on('click', function (event) {

			// Prevent default.
			event.preventDefault();

			// Toggle.
			$menu_openers.not($this).removeClass('active');
			$this.toggleClass('active');

			// Trigger resize (sidebar lock).
			$window.triggerHandler('resize.sidebar-lock');

		});

	});

})(jQuery);