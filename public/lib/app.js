var time;
$(document ).ready(function() {
  time = setTimeout(function() {
      $('#secuencia').fadeOut('fast');
      $('#secuencia').html("");
      $('#respuesta').fadeIn('fast');
  }, 1000*(parseInt(document.getElementById('num').value)));
});

function agregar(imagen) {
  var innerHTML = document.getElementById('secuenciaRespuesta').innerHTML;
  var numImagen = getContadorImagen(imagen);
  var id = "but_" + imagen + "_" + numImagen;
  innerHTML = innerHTML + "<input type=\"image\"  src=\"" + arreglo[imagen] + "\" " + 
                                  "class=\"imagenSeqAns\" " +
                                  "id=\"" + id + "\" " +
                                  "onClick=\"remover('"+ imagen + '_' + numImagen +"', '"+ id +"')\" />";
  document.getElementById('secuenciaRespuesta').innerHTML	= innerHTML;
  var campoRespuesta = document.getElementById('campoRespuesta');
  if(campoRespuesta.value.length == 0)
    campoRespuesta.value = imagen + '_' + numImagen;
  else
    campoRespuesta.value = campoRespuesta.value + ',' + imagen + '_' + numImagen;
  validar();
}

function remover(imagen, type) {
  $('#' + type).remove();
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
  var divSeq = document.getElementById("campoRespuesta");
  var arrRes = divSeq.value.split(',');
  if(arrRes.length === document.getElementById('num').value - 1) {
    var tot = ""
    for(var i = 0; i< arrRes.length; i++) {
      if(i==0) {
        tot = arrRes[i].substr(0,6);
      }else {
        tot = tot + ',' + arrRes[i].substr(0,6);
      }
    }
    divSeq.value = tot;
    document.getElementById('botonSiguiente').click();
  }	
}

function getContadorImagen(imagen) {
  var campoJson = document.getElementById("contadores");
  var jsonText = campoJson.value.replace(/'/g, "\"");
  var obj = JSON.parse(jsonText);
  var num = parseInt(eval("obj." + imagen));
  eval("obj." + imagen + " = " + (num+1) );
  campoJson.value = JSON.stringify(obj).replace(/\"/g, "'");
  return num;
}

function skipTime() {
  clearTimeout(time);
  $('#secuencia').fadeOut('fast');
  $('#secuencia').html("");
  $('#respuesta').fadeIn('fast');
}

function validarLetras() {
  var field = document.getElementById('playerName');
  field.value = field.value.replace(/[^A-Za-z]/g, "");
}