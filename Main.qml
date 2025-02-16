import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

ApplicationWindow {
    visible:true
    width:600
    height:600
    color:"gray"

    Canvas {
        id:canvas
        anchors.fill:parent
        onPaint: {
            var ctx = getContext("2d")

            ctx.clearRect(0,0,width,height)

            ctx.shadowColor = "rgb(220,235,19)"
            ctx.shadowBlur = 5
            ctx.shadowOffsetX = 60
            ctx.shadowOffsetY = 20

            ctx.fillStyle = "lightblue"
            ctx.strokeStyle = "black"
            ctx.lineWidth = 19
            ctx.lineJoin = "round"

            ctx.beginPath()
            ctx.rect(50,50,300,300)
            ctx.fill()
            ctx.stroke()
        }
    }
}
