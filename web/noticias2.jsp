<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
    <head> 
        <title>Noticias</title>        
        <jsp:include flush="true" page="cabecalho.jsp" />
    </head>
    <body>  
        <jsp:include flush="true" page="topmenu.jsp" />
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="img/noticia4.JPG" alt="">
                        <div class="caption">
                            <h3>Veja a lista das redes sociais mais acessadas no Brasil</h3> 
                            <p> A ComScore, tradicional consultoria de análise de internet, revelou novos números sobre os hábitos dos brasileiros em redes sociais, mostrando as mais acessadas. </p> 
                            <p>  Sem surpresas, o Facebook é o serviço mais acessado, mas a lista traz uma revelação interessante: o LinkedIn, rede voltada para contatos profissionais, ficou em 2º e superou o Twitter, rede com mais apelo popular. </p>
                            <p> A metodologia aplicada no estudo pode ter causado uma distorção no resultado, no entanto. A empresa é respeitada, mas seu levantamento considera apenas internautas com 15 anos ou mais que utilizam computador e laptop em casa ou no trabalho. Exclui, portanto, os acessos realizados via smartphones e tablets e conexões em ambientes externos como lan-houses e bibliotecas públicas. </p>
                            <p> A curiosidade é que o Google+ nem mesmo entra na lista das redes mais acessadas, enquanto o Orkut, cada vez menos relevante, ainda mostra relevância. Veja abaixo: </p>
                            <p> A consultoria também listou o tempo gasto pelos usuários de internet em redes sociais. Novamente, sem surpresas, o Facebook domina o ranking de forma absurda, com mais de 97% do tempo gasto em redes sociais. Neste ranking, o Twitter ainda aparece na frente do LinkedIn. </p>  
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="img/noticia5.JPG" alt="" >
                        <div class="caption">
                            <h3>Para o Laboratório de Antivírus gratuitos 2014, fizemos um levantamento dos serviços mais citados em fóruns e redes sociais.</h3>
                            <p>São eles: AVG, AVIRA, AVAST, COMODO e BITDEFENDER, vamos ver como os favoritos se saíram na nossa bancada de testes. Como sempre, fizemos uma análise individual para testar suas características, vantagens e desvantagens. Confiram agora quais os prós e contras de cada aplicativo de segurança. </p>

                            <p> A pergunta a ser respondida é a seguinte: Dos cinco antivírus analisados, qual a melhor escolha para utilizar no meu computador pessoal? </p>

                            <p>  Para a realização desse trabalho entramos no site dos fabricantes e baixamos a versão da solução de ANTIVIRUS disponibilizada para utilização gratuita no seu computador pessoal, em 
                                casa. Trata-se da solução mais simples de antivírus, onde algumas ferramentas somente são acessadas comprando-se uma versão premium do aplicativo. 
                            </p>
                            <p>  Utilizamos nos testes as versões baixadas no site dos fabricantes em 13/04/2014 e atualizadas até a data do teste. 

                            <p> Todas as soluções testadas possuíam a função de análise Real Time (em tempo real), que é uma grande diferença de algumas soluções gratuitas que oferecem apenas a varredura sob 
                                demanda.</p> 
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <img src="img/noticia6.JPG" alt="">
                        <div class="caption">
                            <h3>AndroidLollipop começa a ser liberado para download</h3>
                            <p>O Google começou a liberar, nessa segunda-feira, 3, a nova versão do Android para smartphones e tablets compatíveis. </p>
                            <p>Batizada de Lollipop, a novidade tem como principal diferencial o layout baseado no chamado "Material Design", que a empresa usará para integrar celulares, tablets, computadores e dispositivos vestíveis sob uma única identidade visual. </p>
                            <p>A princípio, a atualização chegará aos aparelhos da linha Nexus, incluindo o 4 e o 7, e aos Google Edition. Depois será a vez das demais fabricantes. </p>
                            <p>Pela Motorola, Moto X, G e E receberão o AndroidLollipop; a HTC também o colocará em alguns de seus principais modelos, e a Asus informou que o sistema entrará na linha Zenfone. </p>

                        </div>
                    </div>
                </div>
            </div>
            <nav>
                <ul class="pager">
                    <li class="previous"><a href="noticias.jsp"><span aria-hidden="true">&larr;</span>Voltar </a></li>
                    <li class="next"><a href="">Inicio<span aria-hidden="true">&rarr;</span></a></li>
                </ul>
            </nav>
        </div>
        <jsp:include flush="true" page="footer.jsp" />
    </body>
</html>
