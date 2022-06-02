<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CU MCA</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet" />
</head>

<body>
    <div class="loginPage">
        <div class="auth_form shadow-lg p-4 rounded-3">
            <h1 class="fw-bold">Login</h1>
            <span class="mb-2">Welcome back</span>
            <form method="POST" action="{{ route('login') }}">
                @csrf
                <div class="mb-3">
                    <input type="text" class="form-control" placeholder="Enter Name" name="name"
                        value="{{ old('name') }}" />
                    @error('name')
                    <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
                <div class="mb-3">
                    <input type="text" class="form-control" placeholder="Enter UUID exp d21mca7878" name="uuid"
                        value="{{ old('uuid') }}" />
                    @error('uuid')
                    <span class="text-danger">{{ $message }}</span>
                    @enderror
                </div>
                <div class="mb-3 d-grid gap-2">
                    <button class="btn btn-primary btn-block">Login</button>
                </div>
            </form>
        </div>

    </div>
</body>

</html>