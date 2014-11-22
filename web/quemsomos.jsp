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

                        <h1 class="center-block">Missão e Visão</h1>
                        <p>Agregar resultados ao negócio de nossos clientes, através de soluções baseadas em software e serviços ágeis, flexíveis e com simplicidade de uso. Para isto, procuramos utilizar em nossos projetos as melhores práticas de desenvolvimento de software e serviços para disponibilização.</p>
                        <p>  Nosso core business é baseado no relacionamento direto com o cliente, proporcionando a ele as melhores tecnologias e serviços que podemos oferecer dentro da nossa área, procurando na medida do impossível, adaptar serviços existentes para as suas necessidades.</p>
                        <p> Desenvolvemos uma estrutura para navegação conjunta pelo aparelho mobile através de cadastro de acesso gerado. Através de análise da concorrência, notou-se a falta de aplicativos móveis interativos nesta área de atuação, que será utilizado como o principal diferencial mediante à concorrência, sendo possível o usuário acessar sua página através de login e senha e acessar suas informações para suporte favoritas salvas em sua sessão. Após análise de requisitos, criação de diagramas de caso de uso para entendimento do sistema e criação dos layouts, foram desenvolvidas as plataformas web e móvel na linguagem java. Como resultado, foi desenvolvido um site de domínio www.suportefenix.com.br e aplicação móvel suporte fênix app que atende o objetivo proposto ao projeto. </p>
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
                        <li><a href="index.jsp" title="Home" rel="nofollow">Início</a></li>
                        <li><a href="quemsomos.jsp" title="Quem somos" rel="nofollow">Quem somos</a></li>
                        <li><a href="servicos.jsp" title="Serviços" rel="nofollow">Serviços</a></li>
                        <li><a href="noticias.jsp" title="Noticias" rel="nofollow">Noticias</a></li>
                        <li><a href="faleconosco.jsp" title="Fale conosco" rel="nofollow">Fale conosco</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <h4>Informações gerais</h4>
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
                    <h4>Citação da semana</h4>
                    <cite class="pull-right">"Dá-se muita atenção ao custo de se realizar algo. E nenhuma ao custo de não realizá-lo."<br />Philip Kotler</cite>
                </div>
            </div>
        </div>
        <div class="container-fluid copyright">
            <footer>
                <p><a href="#" title="#">&copy; 2014 Fênix Suporte</a></p>
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
