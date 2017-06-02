/* var myImage = document.getElementById('sam');

myImage.onclick = function() {
    var mySrc = myImage.getAttribute('src');
    if(mySrc === 'IMG_7422.png') {
      myImage.setAttribute ('src','david.png');
      myImage.right = '200';
          } else {
      myImage.setAttribute ('src','IMG_7422.png');
      myImage.right = '200';
    }
}

*/ 
/* var element = document.getElementById("sbmain");

element.onmouseover = function() {
	document.getElementById("sbsub").style.display = "block";
}

document.getElementById("sbmain").addEventListener("mouseover", mouseOver);
document.getElementById("sbmain").addEventListener("mouseout", mouseOut);

function mouseOver() {
    document.getElementById("sbmain").style.color = "red";
}

function mouseOut() {
    document.getElementById("sbmain").style.color = "blue";
} */


/* document.getElementById("gallery").onclick = function() {myFunction()};

function myFunction() {
	var mySrc = document.getElementById("gallery").getAttribute('src'); 
	document.getElementById("focus").setAttribute('src') = mySrc;
    
} */

window.onload = function() {
        var imgs = document.getElementsByTagName('img');
        for(var i = 0; i < imgs.length; i++) {
            var img = imgs[i];
            img.onclick = function() {
                newSrc = this.src; 
               	focus = document.getElementById('focus');
                focus.src = newSrc;
            }
        }
    } 

/* function changeImage() {
	var image = document.getElementById('focus');
	var height = image.height;
	if (image.height < 400) {
		image.setAttribute('height',(height + 1));
	}
	if (image.height < 400) {
		setTimeout(changeImage, 20);
	}
	console.log('a');
	console.log(test);
	console.log(test2);
	console.log(image);


} */ 