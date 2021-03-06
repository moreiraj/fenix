<!DOCTYPE html>
<html>  
    <head> 
        <title>Quem somos</title>
        <jsp:include flush="true" page="cabecalho.jsp" />        
    </head>
    <body>  
        <jsp:include flush="true" page="topmenu.jsp" />
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8 col-sm-6 col-xs-12 well" id="bg">
                    <img style="display: block; margin-left: auto; margin-right: auto " src="img/quemsomos.jpg" name="borda-top" align="center" alt="" class="bordas" />

                    <div id="quem-somos">

                        <h1 class="center-block">Miss�o e Vis�o</h1>
                        <p>Agregar resultados ao neg�cio de nossos clientes, atrav�s de solu��es baseadas em software e servi�os �geis, flex�veis e com simplicidade de uso. Para isto, procuramos utilizar em nossos projetos as melhores pr�ticas de desenvolvimento de software e servi�os para disponibiliza��o.</p>
                        <p>  Nosso core business � baseado no relacionamento direto com o cliente, proporcionando a ele as melhores tecnologias e servi�os que podemos oferecer dentro da nossa �rea, procurando na medida do imposs�vel, adaptar servi�os existentes para as suas necessidades.</p>
                        <p> Desenvolvemos uma estrutura para navega��o conjunta pelo aparelho mobile atrav�s de cadastro de acesso gerado. Atrav�s de an�lise da concorr�ncia, notou-se a falta de aplicativos m�veis interativos nesta �rea de atua��o, que ser� utilizado como o principal diferencial mediante � concorr�ncia, sendo poss�vel o usu�rio acessar sua p�gina atrav�s de login e senha e acessar suas informa��es para suporte favoritas salvas em sua sess�o. Ap�s an�lise de requisitos, cria��o de diagramas de caso de uso para entendimento do sistema e cria��o dos layouts, foram desenvolvidas as plataformas web e m�vel na linguagem java. Como resultado, foi desenvolvido um site de dom�nio www.suportefenix.com.br e aplica��o m�vel suporte f�nix app que atende o objetivo proposto ao projeto. </p>
                    </div>
                </div>

                <div class="col-md-2"></div>
            </div>
        </div>
        <hr />
        <div class="container-fluid rodape">
            <div class="row">
                <div class="col-md-3">
                    <h4>Menu</h4>
                    <ul>
                        <li><a href="index.jsp" title="Home" rel="nofollow">In�cio</a></li>
                        <li><a href="quemsomos.jsp" title="Quem somos" rel="nofollow">Quem somos</a></li>
                        <li><a href="servicos.jsp" title="Servi�os" rel="nofollow">Servi�os</a></li>
                        <li><a href="noticias.jsp" title="Noticias" rel="nofollow">Noticias</a></li>
                        <li><a href="faleconosco.jsp" title="Fale conosco" rel="nofollow">Fale conosco</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h4>Informa��es gerais</h4>
                    <ul>
                        <li><a href="" title="Termos de uso" rel="nofollow">Termos de uso</a></li>
                        <li><a href="" title="Mapa do site" rel="nofollow">Mapa do site</a></li>

                    </ul>
                </div>
                <div class="col-md-3">
                    <h4>Redes Sociais</h4>

                    <ul class="list-inline social-media">
                        <li><a href="http://twitter.com/" target="_blank"><img src="img/twitter.png" width="26" height="26" alt="TWITTER" title="twitter.com/" /></a></li>
                        <li><a href="http://www.facebook.com//" target="_blank"><img src="img/facebook.png" width="26" height="26" alt="FACEBOOK" title="facebook.com/" /></a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h4>Cita��o da semana</h4>
                    <cite class="pull-right">"D�-se muita aten��o ao custo de se realizar algo. E nenhuma ao custo de n�o realiz�-lo."<br />Philip Kotler</cite>
                </div>
            </div>
        </div>
        <div class="container-fluid copyright">
            <footer>
                <p><a href="#" title="#">&copy; 2014 F�nix Suporte</a></p>
            </footer>
        </div>
        <jsp:include flush="true" page="footer.jsp" />
        <!-- Script para o Google Analytics-->        
        <script>
            var _gaq = [['_setAccount', 'xxxxxxxxxxxxxx'], ['_trackPageview']];
            (function(d, t) {
                var g = d.createElement(t), s = d.getElementsByTagName(t)[0];
                g.src = ('https:' == location.protocol ? '//ssl' : '//www') + '.google-analytics.com/ga.js';
                s.parentNode.insertBefore(g, s)
            }(document, 'script'));
        </script>
    </body>
</html>
