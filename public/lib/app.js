$( document ).ready(function() {
  setTimeout(function() {
      $('#secuencia').fadeOut('slow');
      $('#secuencia').html("");
      $('#respuesta').fadeIn('slow');
  }, 1000*(parseInt(document.getElementById('num').value)));
});

function agregar(imagen) {
  var innerHTML = document.getElementById('secuenciaRespuesta').innerHTML;
  innerHTML = innerHTML + "<input type=\"image\" style=\"width:100px ;height:100px;\" src=\"" + arreglo[imagen] + "\" " + 
                                  "class=\"but_" + imagen + "\" " +
                                  "onClick=\"remover('"+ imagen +"', 'but_"+ imagen +"')\" />";
  document.getElementById('secuenciaRespuesta').innerHTML	= innerHTML;
  var campoRespuesta = document.getElementById('campoRespuesta');
  if(campoRespuesta.value.length == 0)
    campoRespuesta.value = imagen;
  else
    campoRespuesta.value = campoRespuesta.value + ',' + imagen;
  validar();
}

function remover(imagen, type) {
  var children = $('#secuenciaRespuesta').children();
  var found = false;
  for (var i=0;!found && i<children.length; i++) {
    var child = children[i];
    if(type == child.attributes.class.value) {
      found = true;
      child.remove();
    }
  }
  var campoRespuesta = document.getElementById('campoRespuesta').value;
  
  var indexOf = campoRespuesta.indexOf(imagen);
  var indexTo = indexOf + campoRespuesta.length;
  var res1 = campoRespuesta.substr(0, indexOf - 1);
  var res = campoRespuesta.substr(indexOf, indexTo).substr(imagen.length);
  if(res1.length == 0) {
      res = res.substr(1,res.length)
  }
  document.getElementById('campoRespuesta').value = res1+res;
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