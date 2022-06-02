$(document).on("click", ".handleRedirect", function () {
    var url = $(this).data("url");
    window.location = url;
});

function logout() {
    document.getElementById("logoutForm").submit();
}
