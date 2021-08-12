<!doctype html>
<html lang="es">

<head>
    <title>Crear Usuario</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.1/css/all.css">
    <!--Custom styles-->
    <!-- <link rel="stylesheet" type="text/css" href="./css/estiloLogin.css"> -->
</head>

<body>
    <div class="container">

        <div class="signup-form-container">
            <div class="py-4 text-center card-header">
                <img class="d-block mx-auto mb-4" src="./img/logo.jpg" alt="Logo caba" width="72" height="72">
                <h2>Crear Usuario</h2>
                <p class="lead">Página para crear un usuario que nos permitirá acceder al sistema.</p>
            </div>

            <!-- form start -->
            <form role="form" id="register-form" autocomplete="off">

                <div class="form-header">
                    <!-- form header -->
                </div>

                <div class="form-body">

                    <!-- form body will be here, input controls -->

                </div>

                <div class="form-footer">
                    <!-- form footer, let say for submit button -->
                </div>

            </form>

        </div>

    </div>

    <div class="bg-light">

        <div class="col-md-12 text-center">
            <form action="guardarUsuario.jsp" method="POST">
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="user">Usuario</label>
                        <input type="text" class="form-control" id="user" name="user" placeholder="Tu usuario" value="" required>
                        <div class="invalid-feedback">
                            Debe ingresar su nombre.
                        </div>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="pass">Contraseña</label>
                        <input type="password" class="form-control" id="pass" name="pass" placeholder="Tu contraseña" value="" required>
                        <div class="invalid-feedback">
                            Faltó ingresar el apellido.
                        </div>
                    </div>
                </div>

                <hr class="mb-4">

                <div class="row">
                    <div class="col-4"></div>
                    <div class="col-4">
                        <button class="btn btn-primary btn-lg btn-block" type="submit">Ingresar la Solicitud</button>
                    </div>
                </div>
            </form>

            <footer class="my-5 pt-5 text-muted text-center text-small">

                <p class="mb-1">&copy; 2021 Leonardo Martinez</p>
            </footer>
        </div>
    </div>



    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2017-2020 - 2021 Codo a Codo</p>
        <p class="mb-1">&copy; 2021 Leonardo Martinez</p>
    </footer>






    <!-- Optional JavaScript -->
    <script src="./js/form-validation.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>