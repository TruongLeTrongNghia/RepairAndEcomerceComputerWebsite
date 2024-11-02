/**
 * 
 */
let currentBanner = 0;
const banners = document.querySelectorAll(".banner");

function showBanner(index) {
    banners.forEach((banner, i) => {
        banner.style.transform = `translateX(${(i - index) * 100}%)`;
    });
}

function nextBanner() {
    currentBanner = (currentBanner + 1) % banners.length;
    showBanner(currentBanner);
}

setInterval(nextBanner, 3000);