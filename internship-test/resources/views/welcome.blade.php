<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <title>Document</title>
</head>

<body>
    <div class="card container">
        <div class="col card-body">
            <div class="row m-3 ">
                <div class="col d-flex bg-primary rounded justify-content-center border">
                    <p class="bg-primary display-4">
                        Time
                    </p>
                </div>
            </div>
            <div class="row d-flex m-3" style="height: 400px">
                <div class="col-3 d-flex align-items-center border" style="height: 400px;">
                    about self
                </div>
                <div class="col-9 border" style="height: 300px;">
                    @foreach($posts as $post)
                    <div class="card col-5 m-3">
                        <img class="card-img-top" height="100" src="{{asset('placeholder.png')}}" alt="Card image cap">
                        <p class="ms-4 mt-2">Title: {{$post->title}}</p>
                        <div class="card-body">
                            <p class="card-text">{{$post->description}}</p>
                        </div>
                    </div>
                    @endforeach

                    <!-- <div class="row">Git link</div> -->
                </div>
            </div>
        </div>
    </div>
</body>

</html>
