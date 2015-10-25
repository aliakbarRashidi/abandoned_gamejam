import QtQuick 2.0


Rectangle {

    signal clicked;

    property int sol_count: 1
    property int distance_traveled_each_day: 50;
    color: "#333"
    width: parent.width
    height: 60
    property int days_til_rescue: 40;
    property alias earth: _earth
    property alias rocket: _rocket
    property alias mars: _mars

    Image {
        id: _dot
        source: "qrc:///images/earth.png"
        height: 20
        width: 20
        fillMode: Image.PreserveAspectFit
        anchors.verticalCenter: parent.verticalCenter
        x: earth.width + 20;
        //calculateDistanceTraveledEachDay(totalTravelDays);
    }

    Image {
        id: _rocket
        source: "qrc:///images/rocket.png"
        height: 50
        width: 50
        fillMode: Image.PreserveAspectFit
        anchors.verticalCenter: parent.verticalCenter
        x: earth.width + sol_count * distance_traveled_each_day;
        Behavior on x { NumberAnimation { easing.type: Easing.OutCubic } }
        //calculateDistanceTraveledEachDay(totalTravelDays);
    }


    Image {
        id: _earth
        source: "qrc:///images/earth.png"
        height: 90
        width: 90
        fillMode: Image.PreserveAspectFit
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
    }

    Image {
        id: _mars
        source: "qrc:///images/mars.png"
        height: 40
        width: 40
        fillMode: Image.PreserveAspectFit
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 20
    }

}


