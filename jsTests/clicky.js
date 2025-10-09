function init() {
    originalBackground = document.body.style.backgroundColor;
    var checkboxes = document.getElementsByClassName("input");
    for (var i = 0; i < checkboxes.length; i++) {
        checkboxes[i].addEventListener('click', toggleHighlight, false);
    }
}

