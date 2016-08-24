/**
 * Created by hgq on 2016/3/16 0016.
 * paging function
 */

    var current=$("button[id=prve]").val();
    if(current==1){
        $("#prve").attr({
            disabled:disabled
        });
    }

function pagePrve() {
    var current=$("button[id=prve]").val();
    alert("ww");
    if(current==1){
        $("#prve").attr({
            disabled:disabled
        });
    }
    $.ajax({
        type: "get",
        datatype: "json",
        data: {currentpage: --current},
        success: function (data) {
            showData(data);
        }
    })
    return false;
}
function pageCurrent(current) {
    if(current==1){
        $("#prve").attr({
            disabled:"disabled"
        });
    }
    $.ajax({
        type: "get",
        datatype: "json",
        data: {currentpage: current},
        success: function (data) {
             showData(data);
        }
    })
}
function pageNext(current) {

    $.ajax({
        type: "get",
        datatype: "json",
        data: {currentpage: ++current},
        success: function (data) {
            showData(data);
        }
    })
}
function showData(data) {
    $("#outdiv").empty();//先清空div内容
    var strHTML = $(data).find("#innerdiv");//小的
    $("")
    $("#outdiv").html(strHTML);
}