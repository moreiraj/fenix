
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body id="formulario">
        <%
            String nome = request.getParameter("nome");
            String cpf = request.getParameter("cpf");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
            String telefone = request.getParameter("telefone");
            String endereco = request.getParameter("endereco");
            String cidade = request.getParameter("cidade");
            String bairro = request.getParameter("bairro");


        %>    

        <form method="post" action="Controle">
            <input type="hidden" name="flag" value="editarcliente"/>
            <table>

                <tr>
                    <td>
                        <label for="nome">   Nome </label>
                    </td>
                    <td>
                        <input type="text" id="nome" size="30" name="nome" maxlength="30" value="<%=nome%>" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="cpf">  CPF </label>
                    </td>
                    <td>
                        <input type="text" id="cpf" size="11" name="cpf" maxlength="11" value="<%=cpf%>"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="email">  Email </label>
                    </td>
                    <td>
                        <input type="email" id="email" name="email" size="30" maxlength="30" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" value="<%=email%>"/>
                    </td>
                </tr>

                <tr>
                     <td>
                        <label for="senha">  Senha </label>
                    </td>
                    <td>
                        <input type="password" name="senha" size="20" value="<%=senha%>"/> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="telefone">  Telefone </label>
                    </td>
                    <td>
                        <input type="tel" id="fone" size="15" name="telefone" placeholder="(xx) xxxxx-xxxx" pattern="\([0-9]{2}\) [0-9]{4,6}-[0-9]{3,4}$" value="<%=telefone%>"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <label for="endereco">  Endereço </label>
                    </td>
                    <td>
                        <input type="text" id="endereco" name="endereco" value="<%=endereco%>"/>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <label for="cidade">  Cidade </label>
                    </td>
                    <td>
                        <input type="text" id="cidade" name="cidade" value="<%=cidade%>"/>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <label for="bairro">  Bairro </label>
                    </td>
                    <td>
                        <input type="text" id="bairro" name="bairro" value="<%=bairro%>"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Salvar Edições!" class="bot" />
                    </td>
                </tr>
            </table>         
        </form>


    </body>
</html>
