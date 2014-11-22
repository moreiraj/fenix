<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp">Fênix Suporte</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">                
                <li><a href="quemsomos.jsp" title="" rel="">Quem somos</a></li>
                <li><a href="servicos.jsp" title="" rel="">Serviços</a></li>                
                <li><a href="noticias.jsp" title="Noticias" rel="">Noticias</a></li>
                <li><a href="faleconosco.jsp" title="#">Fale conosco</a></li>                
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="http://facebook.com/" target="_blank" title="Curta-nos no Facebook"><i class="fa fa-facebook"></i></a></li>
                <li><a href="http://twitter.com/" target="_blank" title="Siga-nos no Twitter"><i class="fa fa-twitter"></i></a></li>
                <li><a href="http://play.google.com/" target="_blank" title="Disponível na Google Play"><i class="fa fa-android"></i></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Entrar <i class="fa fa-sign-in"></i><span class="caret"></span></a>
                    <div class="dropdown-menu" role="menu">
                        <div class="panel panel-body">
                            <form accept-charset="UTF-8" action="login.jsp" method="post">
                                <div>
                                    <input name="utf8" type="hidden" value="&#x2713;" />
                                    <input name="authenticity_token" type="hidden" value="4L/A2ZMYkhTD3IiNDMTuB/fhPRvyCNGEsaZocUUpw40=" /></div>
                                <fieldset class='textbox'>
                                    <input type="email" name="email" placeholder="E-mail" class="form-control"/>
                                    <input type="password" name="senha"  placeholder="Senha" class="form-control" />
                                    <input type="submit" name="entrar" value="Entrar" class="btn btn-primary">
                                    <a class="btn btn-link" href="cadastrocliente.html">Cadastrar-se</a>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
