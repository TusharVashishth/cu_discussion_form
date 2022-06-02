@extends('layout.app')
@section('content')
<div class="container">
    <div class="card mt-5">
        <div class="card-header">
            <form class="d-flex align-items-center">
                <input type="search" class="form-control" placeholder="Search User" name="name"
                    value="{{ Request::get('name') }}" />
                <a href="{{ route('users') }}" class="btn btn-primary ms-3">Reset</a>
            </form>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <td>Name</td>
                            <td>Email</td>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($users as $user )
                        <tr>
                            <td>{{ $user->name }}</td>
                            <td>{{ $user->email }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div>
                {{ $users->withQueryString()->links() }}
            </div>
        </div>
    </div>
</div>
@endsection