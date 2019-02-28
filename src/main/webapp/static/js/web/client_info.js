$(function (){
    $("li[name^='client_']").removeClass();
    $("#client_detail").addClass("on");

    $("#B_save").click(updateClientName);
})

function updateClientName(){
    var clientName = $("input[name='name']").val();
    if(clientName == ""){
        alert("真是姓名不能为空");
        return ;
    }
    // 修改信息
    $.ajax({
        type : "post",
        url : "update",
        data : {"name" : clientName},
        dataType : "json",
        success : function (result, status){
            if(result.code != 1){
                alert(result.msg);
                return;
            }else{
                alert("修改真实姓名成功");
            }
        }
    })
}