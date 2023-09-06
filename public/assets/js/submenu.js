const menuItem = document.getElementById("home");
const menuItemAbout = document.getElementById("about");
const submenu = document.getElementsByClassName("submenu")[0];

// əlavə etmək istəsən yeni bir deyer asagidaki kimi (submenuAbout) bu id di clasin id si. sonrasinda

const submenuAbout = document.getElementById("submenu-about");
let currentW = window.innerWidth;



$(function() {
    $("#sidebar-menu .dropdown-toggle").on("click", function(e) {
        if (!$(e.target).is("a")) {
            $(this).next(".subnav").slideToggle();
        }
    });
});




function openSubmenu() {
    if (submenu.style.left === "0px" || submenu.style.left === "") {
        submenu.style.setProperty("left", "317px", "important");
        submenu.style.display = "flex";
    } else {
        submenu.style.setProperty("left", "0px", "important");
    }
}

function openSubmenuMobile() {
    if (submenu.style.left === "0px" || submenu.style.left === "-14px" || submenu.style.left === "") {
        submenu.style.setProperty("left", "288px", "important");
        submenu.style.display = "flex";
    } else {
        submenu.style.setProperty("left", "-14px", "important");
    }
}



// asagidakilari kopyala  (openSubmenuAbout openSubmenuAboutMobile) bu ikisini


function openSubmenuAbout() {
    if (submenuAbout.style.left === "0px" || submenuAbout.style.left === "") {
        submenuAbout.style.setProperty("left", "317px", "important");
        submenuAbout.style.display = "flex";
    } else {
        submenuAbout.style.setProperty("left", "0px", "important");
    }
}

function openSubmenuAboutMobile() {
    if (submenuAbout.style.left === "0px" || submenuAbout.style.left === "-14px" || submenuAbout.style.left === "") {
        submenuAbout.style.setProperty("left", "288px", "important");
        submenuAbout.style.display = "flex";
    } else {
        submenuAbout.style.setProperty("left", "-14px", "important");
    }
}



if (currentW < 1281) {
    menuItem.addEventListener("click", () => openSubmenuMobile());
    menuItemAbout.addEventListener("click", () => openSubmenuAboutMobile());
    // bir de bunlardan bir dene eynisini bura elave edirsen
} else {
    menuItem.addEventListener("click", () => openSubmenu());
    menuItemAbout.addEventListener("click", () => openSubmenuAbout());
    // bir de bunlardan bir dene eynisini bura elave edirsen

}
