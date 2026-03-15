async function loadApps(){

    const response = await fetch("data.json");

    const apps = await response.json();

    const container = document.getElementById("apps-container");

    apps.forEach(app => {

        const card = document.createElement("div");

        card.className = "app-card";

        card.innerHTML = `
<img src="${app.icon}">
<h3>${app.name}</h3>
`;

        card.onclick = () => {

            if(app.play && app.play !== "#")
                window.open(app.play);

        };

        container.appendChild(card);

    });

}

loadApps();