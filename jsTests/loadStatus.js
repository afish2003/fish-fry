let dots = 0;
setInterval(function () {
    dots = (dots + 1) % 4; // cycles 0,1,2,3
    document.getElementById("loading").textContent = "Loading" + ".".repeat(dots);
}, 500);