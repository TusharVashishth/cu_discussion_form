@if (session('success'))
<script>
    var message = "{!! session('success') !!}"
    Toastify({
            text: message,
            duration: 4000,
            newWindow: true,
            // close: true,
            gravity: "top", // `top` or `bottom`
            position: "right", // `left`, `center` or `right`
            stopOnFocus: true, // Prevents dismissing of toast on hover
            style: {
            background: "linear-gradient(to right, #00b09b, #96c93d)",
            },
            }).showToast();
</script>
@endif