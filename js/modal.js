

function openImgModal() {
    const original_img = document.getElementById('foto_perfil').getElementsByTagName('img')[0];

    const overlay = document.createElement('div');
    overlay.id = 'contenedor_perfil_ampliado';
    overlay.addEventListener('click', closeImgModal);

    const img_container = document.createElement('div');
    img_container.id = 'img_perfil_ampliada';


    const container_close_button = document.createElement('div');
    container_close_button.id = 'boton_cerrar';
    const close_button = document.createElement('a');

    const close_button_img = document.createElement('img');
    close_button_img.src = './img/icos/cerrar.svg';
    close_button.appendChild(close_button_img);
    container_close_button.appendChild(close_button);

    img_container.appendChild(container_close_button);
    overlay.appendChild(img_container);

    const img = document.createElement('img');
    img.src = original_img.src;
    img.alt = original_img.alt;
    img.title = original_img.title;

    img_container.appendChild(img);

    document.body.appendChild(overlay);
}

function closeImgModal() {
    document.getElementById('contenedor_perfil_ampliado').remove();
}



document.getElementById('foto_perfil').addEventListener('click', openImgModal);