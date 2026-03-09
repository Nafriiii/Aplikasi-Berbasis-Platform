let alignState = 0;
let warnaBerubah = false;

function ubahAlignment() {
    const judul = document.getElementById("judul");

    if (alignState === 0) {
        judul.style.textAlign = "center";
        alignState = 1;
    } 
    else if (alignState === 1) {
        judul.style.textAlign = "right";
        alignState = 2;
    } 
    else {
        judul.style.textAlign = "left";
        alignState = 0;
    }
}

function ubahWarna() {
    const box = document.querySelector(".media");

    if (!warnaBerubah) {
        box.style.background = "blue";
        warnaBerubah = true;
    } else {
        box.style.background = "";
        warnaBerubah = false;
    }
}