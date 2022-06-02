<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CU MCA</title>
    <!-- CSS only -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
        crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet" />
    {{--
    <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet"> --}}

</head>

<body>
    <div class="container-fluid">
        @include('layout.header')
        @yield('content')
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
        integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/ckeditor/4.19.0/ckeditor.js"
        integrity="sha512-tjxUra6WjSA8H5+nC7G61SVqEXj1e958LdR4N8BGZeRx9tObm/YhsrUzY6tH4EuHQyZqOyu317pgV7f8YPFoAQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="{{ asset('js/index.js') }}"></script>
    {{-- <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script> --}}

    @yield('extraJs')
</body>

</html>