$( document ).ready(function() {
  setTimeout(function() {
      $('#secuencia').fadeOut('slow');
      $('#secuencia').html("");
      $('#respuesta').fadeIn('slow');
  }, 1000*(parseInt(document.getElementById('num').value)));
});

function agregar(imagen) {
  var innerHTML = document.getElementById('secuenciaRespuesta').innerHTML;
  innerHTML = innerHTML + "<img class='imagenSeq' src='" + arreglo[imagen] + "' />";
  document.getElementById('secuenciaRespuesta').innerHTML	= innerHTML;
  var campoRespuesta = document.getElementById('campoRespuesta');
  if(campoRespuesta.value.length == 0)
    campoRespuesta.value = imagen;
  else
    campoRespuesta.value = campoRespuesta.value + ',' + imagen;
  validar();
}

function validar() {
  var divSeq = document.getElementById("campoRespuesta").value;

  if(divSeq.split(',').length === document.getElementById('num').value - 1) {
    document.getElementById('botonSiguiente').click();
  }	
}

function getUrlImagen(imagen) {
  return mapImages[imagen];
}