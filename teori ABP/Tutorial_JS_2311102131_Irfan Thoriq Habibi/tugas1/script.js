function hitungGanjil() {
    const min = parseInt(document.getElementById('minimal').value);
    const max = parseInt(document.getElementById('maksimal').value);

    let ganjil = [];
    let total = 0;

    if (isNaN(min) || isNaN(max)) {
        document.getElementById('hasil').innerHTML = "Harap masukkan kedua angka!";
        return;
    }

    for (let i = min; i <= max; i++) {
        if (i % 2 !== 0) {
            ganjil.push(i);
            total += i;
        }
    }

    const hasilDiv = document.getElementById('hasil');

    if (ganjil.length > 0) {
        hasilDiv.innerHTML =
            "<p>Angka Ganjil: " + ganjil.join(" + ") + " = " + total + "</p>";
    } else {
        hasilDiv.innerHTML = "Tidak ada angka ganjil dalam rentang tersebut.";
    }
}