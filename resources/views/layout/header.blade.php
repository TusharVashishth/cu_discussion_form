<nav class="navbar navbar-expand-sm navbar-light bg-light ">
    <div class="container-fluid">
        <a class="navbar-brand fw-bold" href="#">CU MCA Discussion</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('/') ? 'active' :'' }}" aria-current="page"
                        href="{{ route('home') }}">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link {{ Request::is('users') ? 'active' :'' }}" href="{{ route('users') }}">Users</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" onclick="logout()">Log out</a>
                </li>

            </ul>

            <form method="POST" action="{{ route('logout') }}" id="logoutForm">
                @csrf
            </form>
        </div>
    </div>
</nav>