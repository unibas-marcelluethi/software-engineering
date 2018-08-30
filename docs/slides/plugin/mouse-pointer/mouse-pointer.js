(function (doc, win) {
	"use strict"

	const initial_css = {
		position: 'absolute',
		float: 'left',
		borderRadius: '50%',
		width: '30px',
		height: '30px',
		backgroundColor: 'rgba(255, 0, 0, 0.4)',
		zIndex: 20,
		display: 'none'
	}
    let toggleBind = false
    let toggleInvisible = false
	const body = doc.getElementsByTagName('body')[0]
	let tail = doc.createElement('div')

	function initModule () {
		Object.assign(tail.style, initial_css)
		body.appendChild(tail)
		setKeyboards()
		if (window.Reveal.registerKeyboardShortcut) {
			Reveal.registerKeyboardShortcut('CAPSLOCK', 'Toggle Mouse Pointer');
		}
	}
	
	function mouse_pointing(e) {
		tail.style.display = 'block'
		tail.style.left = e.pageX - 15 + 'px'
		tail.style.top = e.pageY - 15 + 'px'
	}

	function toogleMousePointer () {
		if (!toggleBind) {
			document.removeEventListener('mousemove', mouse_pointing)
			tail.style.display = 'none'
			body.style.cursor = 'auto'
		} else {
            if (toggleInvisible) {
                tail.style.display = 'block'
			    tail.style.width = '0px'
			    tail.style.height = '0px'
			    body.style.cursor = 'none'
                document.addEventListener('mousemove', mouse_pointing)
            } else {
			    tail.style.display = 'block'
			    tail.style.width = '30px'
			    tail.style.height = '30px'
			    body.style.cursor = 'none'
                document.addEventListener('mousemove', mouse_pointing)
            }
		}
	}

	function setKeyboards(params) {
		document.addEventListener('keydown', function (event) {
			if (event.keyCode === 20) {
				event.preventDefault()
				toggleBind = !toggleBind
				toogleMousePointer()
            }
            if (event.keyCode === 84) {
				event.preventDefault()
				toggleInvisible = !toggleInvisible
				toogleMousePointer()
			}
		}, false )
	}
	
	
	initModule()
})(document, window)