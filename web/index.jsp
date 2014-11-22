<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR" class="no-js"><!-- A classe 'no-js' é reconhecida pelo javascript modernizr, permitindo que browsers antigos reconheçam corretamente nossas tags -->
    <head>        
        <title>Fênix Suporte</title>
        <jsp:include flush="true" page="cabecalho.jsp" />
        <link href="css/carousel.css" rel="stylesheet" type="text/css"/>
        <!--<style type="text/css">
            h2{
                margin: 0;     
                color: #666;
                padding-top: 90px;
                font-size: 52px;
                font-family: "trebuchet ms", sans-serif;    
            }
            .item{
                background: #888;    
                text-align: center;
                height: 300px !important;
            }
            .carousel{
                margin-top: 20px;
            }
            .bs-example{
                margin: 20px;
                width: 100%;
                height: 280px;
                position: relative;

                margin-left: auto;
                margin-right: auto;                          
            }
        </style>-->
    </head>
    <body>

        <!--[if lt IE 7]>
            <p class="chromeframe">Você está usando um brower desatualizado. <a href="http://browsehappy.com/">Atualize seu browser</a> ou <a href="http://www.google.com/chromeframe/?redirect=true">instale Google Chrome Frame</a> para melhor visualizar este site.</p>
        <![endif]-->

        <!-- Código baseado em  http://twitter.github.com/bootstrap/examples/hero.html -->

        <!-- Início da barra de navegação -->

        <jsp:include flush="true" page="topmenu.jsp" />

        <div align="center" class="bs-example">
            <div id="myCarousel" class="carousel slide" data-interval="3000" data-ride="carousel">
                <!-- Carousel indicators -->
                <ol id="myCarouselol" class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>   
                <!-- Carousel items -->
                <div class="carousel-inner">
                    <div class="active item">
                        <!--<h2>Slide 1</h2>-->
                        <img src="img/imagem2.bmp"/>
                        <div class="carousel-caption">
                            <h3></h3>
                            <p></p>
                        </div>
                    </div>
                    <div class="item">
                        <!--<h2>Slide 2</h2>-->

                        <img src="img/imagem4.jpg" />
                        <div class="carousel-caption">
                            <h3 class="tituloSlide"></h3>
                            <p></p>
                        </div>
                    </div>
                    <div class="item">
                        <!--<h2>Slide 3</h2>-->
                        <img src="img/imagem6.jpg" />
                        <div class="carousel-caption">
                            <h3></h3>
                            <p></p>
                        </div>
                    </div>
                </div>
                <!-- Carousel nav -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
        <!-- Início do container para a classe 'jumbotron' -->
        <div class="container hero">
            <!-- Hero unit para o showcase -->
            <div class="jumbotron">
                <h1>Confira nossos planos</h1>
                <br />
                <p>Os melhores profissionais ajudam você a simplificar sua navegação:</p>
                <ul>
                    <li>Instalação de softwares de navegação
                        Serviço de ajuste do Internet Explorer, Firefox ou Linux para que o seu navegador tenha sempre o melhor desempenho.</li>

                    <li> Organização das contas de e-mail
                        Suas diversas contas configuradas para o mesmo Outlook, de forma que você aproveite ao máximo todas as funcionalidades.</li>

                    <li>Configuração de conexão à Internet
                        Garantia de acesso rápido e eficiente ao melhor conteúdo.</li>
                </ul>
                <p><a href="servicos.jsp" class="btn btn-primary btn-large" rel="" title="">Saiba mais &raquo;</a></p>
            </div>
        </div> <!-- /container hero -->
        <!-- Aqui colocaremos nosso container e uma linha com 3 colunas -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <h1>Veja a lista das redes sociais mais acessadas no Brasil</h1>
                    <p>A ComScore, tradicional consultoria de análise de internet, revelou novos números sobre os hábitos dos brasileiros em redes sociais, mostrando as mais acessadas. Sem surpresas, o Facebook é o serviço mais acessado, mas a lista traz uma revelação interessante: o LinkedIn, rede voltada para contatos profissionais, ficou em 2º e superou o Twitter, rede com mais apelo popular.
                        A metodologia aplicada no estudo pode ter causado uma distorção no resultado, no entanto. A empresa é respeitada, mas seu levantamento considera apenas internautas com 15 anos ou mais que utilizam computador e laptop em casa ou no trabalho. Exclui, portanto, os acessos realizados via smartphones e tablets e conexões em ambientes externos como lan-houses e bibliotecas públicas. 
                    </p>
                    <p><a class="btn btn-link" href="noticias.jsp" title="">Leia mais &raquo;</a></p>
                </div>
                <div class="col-md-4">
                    <h1>Só o antivírus não é suficiente: aprenda a se proteger melhor na internet</h1>
                    <p>Foi-se o tempo em que um bom antivírus era tudo o que precisávamos para navegar tranquilamente na internet.  Leandro Matovam, CEO da AVG Brasil, diz que "o antivírus é essencial, mas não é a única coisa a se fazer".
                        Cláudio Martinelli, gerente de varejo da Kaspersky, explica que nem tudo é vírus: "Para falar a verdade, muitas das pragas digitais, fraudes e tentativas de invasão que conhecemos não são o que podemos chamar de vírus. Às vezes, não estão nem dentro da máquina do usuário". Ele explica que muitas vezes, essas ameaças ficam em sites falsos da internet. Aqui, o antivírus sozinho não tem capacidade de identificar o perigo.
                    </p>
                    <p><a class="btn btn-link" href="noticias.jsp" title="">Leia mais &raquo;</a></p>
                </div>
                <div class="col-md-4">
                    <h1>Hackers revelam as 8 falhas de segurança mais graves do ano</h1>
                    <p>A conferência DefCon, focada em segurança computacional, começou ontem nos Estados Unidos e reúne hackers e fabricantes de antivírus. Nesta sexta-feira, os participantes do evento divulgaram uma lista com as 8 falhas de segurança consideradas por eles as mais graves do ano. 
                        Um tipo de drive externo específico para ser utilizado em redes locais, os NAS (Network Attached Storage) são úteis para armazenamento compartilhado, mas,de acordo com o analista de segurança Jacob Holcomb, após um teste com 50 modelos diferentes, nenhum deles possuía segurança suficiente que não fosse burlada. O teste foi feito em 2013 e os resultados, demonstrados em uma palestra neste ano.
                        gundo o chefe de segurança da In-Q-Tel, Dan Geer. Confira abaixo.</p>
                    <p><a class="btn" href="noticias.jsp" title="">Leia mais &raquo;</a></p>
                </div>
            </div>
        </div> <!-- /container 2-->

        <div class="container-fluid rodape">
            <div class="row">
                <div class="col-md-3 footer">
                    <h4>Menu</h4>
                    <ul>
                        <li><a href="index.html" title="Home" rel="nofollow">Home</a></li>
                        <li><a href="quemsomos.jsp" title="Quem somos" rel="nofollow">Quem somos</a></li>
                        <li><a href="servicos.jsp" title="Serviços" rel="nofollow">Serviços</a></li>
                        <li><a href="noticias.jsp" title="Noticias" rel="nofollow">Noticias</a></li>
                        <li><a href="faleconosco.jsp" title="Fale conosco" rel="nofollow">Fale conosco</a></li>
                    </ul>
                </div>
                <div class="col-md-3 footer">
                    <h4>Informações gerais</h4>
                    <ul>
                        <li><a href="" title="Termos de uso" rel="nofollow">Termos de uso</a></li>
                        <li><a href="" title="Mapa do site" rel="nofollow">Mapa do site</a></li>
                    </ul>
                </div>
                <div class="col-md-3 footer">
                    <h4>Redes Sociais</h4>
                    <ul class="list-inline social-media">
                        <li><a href="http://twitter.com/" target="_blank"><img src="img/tw.png" width="26" height="26" alt="TWITTER" title="twitter.com/" /></a></li>
                        <li><a href="http://www.facebook.com//" target="_blank"><img src="img/facebook1.png" width="26" height="26" alt="FACEBOOK" title="facebook.com/" /></a></li>
                    </ul>
                </div>
                <div class="col-md-3 footer">
                    <h4>Citação da semana</h4>
                    <cite class="pull-right">"Dá-se muita atenção ao custo de se realizar algo. E nenhuma ao custo de não realizá-lo."<br />Philip Kotler</cite>
                </div>
            </div>
        </div>
        <div class="copyright">
            <footer class="footer">
                <p><a href="#" title="#">&copy; 2014 Fênix Suporte</a></p>
            </footer>
        </div>
        <jsp:include flush="true" page="footer.jsp" />
        <script type="text/javascript">
            $(document).ready(function() {
                $("#myCarouselol").hide();
                $(".prev-slide").click(function() {
                    $("#myCarousel").carousel('prev');
                });
                $(".next-slide").click(function() {
                    $("#myCarousel").carousel('next');
                });
            });
        </script>   
        <!-- Script para o Google Analytics   -->     
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
