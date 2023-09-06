const menuItem = document.getElementById("home");
const menuItemAbout = document.getElementById("about");
const submenu = document.getElementsByClassName("submenu")[0];
const submenuAbout = document.getElementById("submenu-about");
let currentW = window.innerWidth;

$(function() {
    $("#sidebar-menu .dropdown-toggle").on("click", function(e) {
        if (!$(e.target).is("a")) {
            $(this).next(".subnav").slideToggle();
        }
    });
});

function openSubmenu(submenuElement) {
    if (submenuElement.style.left === "0px" || submenuElement.style.left === "") {
        submenuElement.style.setProperty("left", "317px", "important");
        submenuElement.style.display = "flex";
    } else {
        submenuElement.style.setProperty("left", "0px", "important");
    }

    // Close other submenus
    if (submenuElement !== submenu) {
        submenu.style.setProperty("left", "0px", "important");
        submenu.style.display = "none";
    }
    if (submenuElement !== submenuAbout) {
        submenuAbout.style.setProperty("left", "0px", "important");
        submenuAbout.style.display = "none";
    }
}

function openSubmenuMobile(submenuElement) {
    if (submenuElement.style.left === "0px" || submenuElement.style.left === "-14px" || submenuElement.style.left === "") {
        submenuElement.style.setProperty("left", "288px", "important");
        submenuElement.style.display = "flex";
    } else {
        submenuElement.style.setProperty("left", "-14px", "important");
    }

    // Close other submenus
    if (submenuElement !== submenu) {
        submenu.style.setProperty("left", "0px", "important");
        submenu.style.display = "none";
    }
    if (submenuElement !== submenuAbout) {
        submenuAbout.style.setProperty("left", "0px", "important");
        submenuAbout.style.display = "none";
    }
}

if (currentW < 1281) {
    menuItem.addEventListener("click", () => openSubmenuMobile(submenu));
    menuItemAbout.addEventListener("click", () => openSubmenuMobile(submenuAbout));
} else {
    menuItem.addEventListener("click", () => openSubmenu(submenu));
    menuItemAbout.addEventListener("click", () => openSubmenu(submenuAbout));
}
