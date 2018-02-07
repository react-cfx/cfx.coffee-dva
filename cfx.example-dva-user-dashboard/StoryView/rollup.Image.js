// _Image =
//   if Image?
//   then Image
//   else ->
    
// export default _Image

var _Image;

_Image = typeof Image !== "undefined" && Image !== null ? Image : function() {};

export default _Image;
