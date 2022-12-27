
function Export(){
    $.ajax({
        url: '../components/export.php',
        method: 'post',
        data: {},
        success: function(result){
            alert(result);
        },
        error: function (xhr, str){
            alert("Ошибка экспорта!" + xhr.responseText);
        }
    });
}

function Import(){
    $.ajax({
        url: '../components/import.php',
        method: 'post',
        data: {},
        success: function(result){
            $('.text-import').html(result);
        },
        error: function(xhr, str){
            alert("Ошибка ипорта!"+xhr.responseText);
        }
    });
}
