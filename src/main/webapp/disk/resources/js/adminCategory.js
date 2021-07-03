var table;
function status(response) {
    if (response.status >= 200 && response.status < 300) {
        return Promise.resolve(response)
    } else {
        return Promise.reject(new Error(response.statusText))
    }
}
function json(response) {
    return response.json();
}
function edit(categoryId) {
    location.href = URL + "/admin/categories/edit/" + categoryId;
}
function del(categoryId) {
    fetch(URL + "/admin/api/categories/delete/" + categoryId, {
        method: "DELETE",
    }).then(status)
        .then(() => {
            alert("delete success");
            table.row($('button#'+categoryId+'').parents('tr')).remove().draw();
        })
        .catch((err) => console.log(err))
}
function initTable(){
    $.get(URL + "/admin/api/categories/list",function (responseData) {
        var modifierCategories = JSON.parse(responseData).map(item => {
            return {
                id: item.id,
                name: item.name,
                slug: item.slug,
                actions: "<button id='"+item.id+"' onclick='del("+item.id+")' class='delete badge badge-outline-danger'><i class='far fa-times-circle'></i></button> &nbsp;&nbsp;" +
                         "<button onclick='edit("+item.id+")'  class='badge badge-outline-success'><i class=\"far fa-user-circle\"></i></button>",
            }

        });
        table = $('#categories').DataTable({
            "processing":true,
            "bInfo" : false,
            "autoWidth":true,
            data: modifierCategories,
            columns: [
                {data: 'id'},
                {data: 'name'},
                {data: 'slug'},
                {data: 'actions'},
            ]
        })
    }).fail(function () {
        alert();
    });
}
document.addEventListener("DOMContentLoaded",function () {
    initTable();
})