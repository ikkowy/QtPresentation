import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    visibility: "FullScreen"
    title: "Qt"

    TitlePage {}
    Julia {}
    Slide {}
    TicTacToe {}

    function updateSlideInfo () {
        var len = contentItem.children.length;
        for (var i=0; i < len; i++) {
            contentItem.children[i].slideInfo = (i+1).toString() + "/" + len.toString();
            contentItem.children[i].slideNumber = i+1;
        }
    }

    function showSlide (n) {
        var len = contentItem.children.length;
        if (n < 1 || n > len) { return; }
        for (var i=0; i < len; i++) {
            contentItem.children[i].visible = (i+1 == n);
        }
    }

    Component.onCompleted: {
        updateSlideInfo();
        showSlide(1);
    }
}
