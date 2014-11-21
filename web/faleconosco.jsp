<html>  
    <head> <title>:: Fale Conosco ::</title>
        <script src="js/jquery-1.8.1.js"></script>
        <script src="js/bootstrap.js"></script>
        <script src="js/modernizr-2.6.1.min.js"></script>

        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/main.css">

    </head>
    <body>  
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="#">Fênix Suporte</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav">


                            <li class="active"><a href="index.html" title="Página inicial">Home</a></li>
                            <li><a href="quemsomos.jsp" title="" rel="">Quemsomos</a></li>
                            <li><a href="servicos.jsp" title="" rel="">Servi&ccedil;os</a></li>
                            <li><a href="noticias.jsp" title="" rel="">Noticias</a></li> 
                            <!-- SOMENTE DISPONIVEL PARA CADASTRADOS
                            
                            <li><a href="tutorias.jsp" title="" rel="">Tutoriais</a></li>
                           
                         <li><a href="download.jsp" title="" rel="">Download</a></li>-->

                            <li><a href="faleconosco.jsp" title="#">Fale conosco</a></li>
                    </div>
                </div>
            </div>

            <section id="about">
                <div class="page-header">

                </div>
                <div class="container-fluid">
                    <form class="form-horizontal well" action="post.jsp" method="post">
                        <fieldset>
                            <legend>Preencha corretamente os dados abaixo para que possamos respondê-lo com mais eficiência e agilidade.</legend>
                            <div class="control-group">
                                <label class="control-label" for="name">Seu Nome: </label>
                                <div class="controls">
                                    <input type="text"
                                           class="input-xlarge"
                                           id="name"
                                           name="name"
                                           placeholder="Seu nome completo" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="email">Seu E-mail: </label>
                                <div class="controls">
                                    <input type="text"
                                           class="input-xlarge"
                                           id="email"
                                           name="email"
                                           placeholder="email@provedor.com.br" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="email">Seu Site: </label>
                                <div class="controls">
                                    <input type="text"
                                           class="input-xlarge"
                                           id="site"
                                           name="site"
                                           placeholder="www.site.com.br" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="email">Assunto: </label>
                                <div class="controls">
                                    <input type="text"
                                           class="input-xlarge"
                                           id="subject"
                                           name="subject"
                                           placeholder="Elogio, Critica ou sugestão" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" for="mensagem">Deixe sua mensagem: </label>
                                <div class="controls">
                                    <textarea
                                        class="input-xxlarge"
                                        id="mensagem"
                                        rows="10"
                                        name="mensagem">
                                    </textarea>
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-primary"><i class="icon-envelope"></i> Enviar Informações</button>
                            </div>
                        </fieldset>
                    </form>
                </div>
            </section>
            <br><br><br><br>
            <!-- Footer
            ================================================== -->

            <footer class="footer">
                <p class="pull-right"><a href="index_1.html">Inicio </a></p>
            </footer>
        </div><!-- /container -->
        <!-- JS PAGE !-->

    </body>
</html>