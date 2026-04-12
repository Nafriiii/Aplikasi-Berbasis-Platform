window.onload = function () {

    let btn = document.createElement("button");
    btn.innerText = "Web Profile";
    btn.className = "btn";

    btn.style.position = "fixed";
    btn.style.bottom = "20px";
    btn.style.right = "20px";
    btn.style.backgroundColor = "#1316e8";
    btn.style.color = "white";

    btn.onclick = function () {
        goToProfile();
    };

    document.body.appendChild(btn);
};

function goToProfile() {
    fetch('/profile-page')
        .then(res => res.text())
        .then(data => {
            document.body.innerHTML = data;
        });
}

function goBack() {
    location.reload();
}