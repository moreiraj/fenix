<html>  
    <head> 
        <title>Fale Conosco</title>
        <jsp:include flush="true" page="cabecalho.jsp" />
    </head>
    <body>  
        <jsp:include flush="true" page="topmenu.jsp" />
        <div class="container">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="alert alert-info">Preencha corretamente os dados abaixo para que possamos respondê-lo com mais eficiência e agilidade.</div>
                <form class="form-horizontal well" action="post.jsp" method="post">
                    <fieldset>                        
                        <div class="control-group">
                            <label class="control-label" for="name">Nome: </label>
                            <div class="controls">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input type="text"
                                           class="form-control"
                                           id="name"
                                           name="name"
                                           placeholder="Seu nome completo" />
                                </div>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="email">Seu E-mail: </label>
                            <div class="controls">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                    <input type="email"
                                           class="form-control"
                                           id="email"
                                           name="email"
                                           placeholder="email@provedor.com.br" />
                                </div>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="email">Site:</label>
                            <div class="controls">
                                <div class="input-group">
                                    <span class="input-group-addon">http://</span>
                                    <input type="url"
                                           class="form-control"
                                           id="site"
                                           name="site"
                                           placeholder="www.site.com.br" />
                                </div>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="email">Assunto:</label>
                            <input type="text"
                                   class="form-control"
                                   id="subject"
                                   name="subject"
                                   placeholder="Elogio, Critica ou sugestão" />
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="mensagem">Deixe sua mensagem: </label>

                            <textarea
                                class="form-control"                                
                                id="mensagem"
                                rows="10"
                                name="mensagem">
                            </textarea>                       
                        </div>
                        <hr/>
                        <button type="submit" class="btn btn-primary btn-lg">Enviar&nbsp;<i class="glyphicon glyphicon-send"></i></button>

                    </fieldset>
                </form>
            </div>                    
        </div>
        <!-- /container -->
        <jsp:include flush="true" page="footer.jsp" />
    </body>
</html>