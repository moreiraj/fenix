/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Cliente;
import model.ClienteDao;
import model.Plano;
import model.PlanoDao;

/**
 *
 * @author Aluno
 */
@WebServlet(name = "Controle", urlPatterns = {"/Controle"})
public class Controle extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String mensagem = null;
        String flag = request.getParameter("flag");
        if (flag.equalsIgnoreCase("cadastrocliente")) {

            String nome = request.getParameter("nome");
            String cpf = request.getParameter("cpf");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
            String telefone = request.getParameter("telefone");
            String endereco = request.getParameter("endereco");
            String cidade = request.getParameter("cidade");
            String bairro = request.getParameter("bairro");

            Cliente cli = new Cliente();
            cli.setNome(nome);
            cli.setCpf(cpf);
            cli.setEmail(email);
            cli.setTelefone(telefone);
            cli.setSenha(senha);
            cli.setEndereco(endereco);
            cli.setCidade(cidade);
            cli.setBairro(bairro);

            ClienteDao dao = new ClienteDao();
            int r = dao.conectar();
            if (r == 0) {
                mensagem = "Driver de conexão não foi encontrado";
            } else if (r == 2) {
                mensagem = "Dados de conexão com o banco incorretos";
            } else {
                int x = dao.salvar(cli);
                if (x == 0) {
                    mensagem = "Erro ao tentar salvar os dados";
                } else if (x == 3) {
                    mensagem = "Você está tentando cadastrar um cpf que já existe";
                } else {
                    mensagem = "Dados gravados com sucesso";
                }
                dao.desconectar();
            }
        } else if (flag.equalsIgnoreCase("consultarcliente")) {
            String cpf = request.getParameter("cpf");
            ClienteDao dao = new ClienteDao();
            int r = dao.conectar();
            if (r == 0) {
                mensagem = "Driver de conexão não foi encontrado";
            } else if (r == 2) {
                mensagem = "Dados de conexão com o banco incorretos";
            } else {
                ArrayList listaCliente = dao.consultar(cpf);
                if (listaCliente == null || listaCliente.isEmpty()) {
                    mensagem = "Dados não localizados";
                } else {
                    request.setAttribute("retornaCliente", listaCliente);
                    RequestDispatcher disp = request.getRequestDispatcher("exibecli.jsp");
                    disp.forward(request, response);
                }
                dao.desconectar();
            }
        } else if (flag.equals("excluircliente")) {
            String cpf = request.getParameter("cpf");
            ClienteDao dao = new ClienteDao();
            int r = dao.conectar();
            if (r == 0) {
                mensagem = "Driver de conexão não foi encontrado";
            } else if (r == 2) {
                mensagem = "Dados de conexão com o banco incorretos";
            } else {
                int x = dao.excluir(cpf);
                if (x == 0) {
                    mensagem = "Erro ao tentar excluir o cliente";
                } else {
                    mensagem = "Dados excluídos com sucesso";
                }
                dao.desconectar();
            }
        }
        request.setAttribute("m", mensagem);
        RequestDispatcher disp = request.getRequestDispatcher("mensagens.jsp");
        disp.forward(request, response);
    }
/**
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String mensagem = null;
        String flag = request.getParameter("flag");
        if (flag.equalsIgnoreCase("cadastroplano")) {

            int id = Integer.parseInt(request.getParameter("id"));
            String descricao = request.getParameter("descricao");
            double preco = Double.parseDouble(request.getParameter("preco"));

            Plano plan = new Plano();
            plan.setId(id);
            plan.setDescricao(descricao);
            plan.setPreco(preco);

            PlanoDao dao = new PlanoDao();
            int r = dao.conectar();
            if (r == 0) {
                mensagem = "Driver de conexão não foi encontrado";
            } else if (r == 2) {
                mensagem = "Dados de conexão com o banco incorretos";
            } else {
                int x = dao.salvar(plan);
                if (x == 0) {
                    mensagem = "Erro ao tentar salvar os dados";
                } else if (x == 3) {
                    mensagem = "Você está tentando cadastrar um código que já existe";
                } else {
                    mensagem = "Dados gravados com sucesso";
                }
                dao.desconectar();
            }
        } else if (flag.equalsIgnoreCase("consplan")) {
            String id = request.getParameter("id");
            PlanoDao dao = new PlanoDao();
            int r = dao.conectar();
            if (r == 0) {
                mensagem = "Driver de conexão não foi encontrado";
            } else if (r == 2) {
                mensagem = "Dados de conexão com o banco incorretos";
            } else {
                ArrayList listaPlano = dao.consultar(id);
                if (listaPlano == null || listaPlano.isEmpty()) {
                    mensagem = "Dados não localizados";
                } else {
                    request.setAttribute("retornaPlano", listaPlano);
                    RequestDispatcher disp = request.getRequestDispatcher("exibeplano.jsp");
                    disp.forward(request, response);
                }
                dao.desconectar();
            }
        } else if (flag.equals("excluirplano")) {
            String cod = request.getParameter("id");
            PlanoDao dao = new PlanoDao();
            int r = dao.conectar();
            if (r == 0) {
                mensagem = "Driver de conexão não foi encontrado";
            } else if (r == 2) {
                mensagem = "Dados de conexão com o banco incorretos";
            } else {
                int x = dao.excluir(cod);
                if (x == 0) {
                    mensagem = "Erro ao tentar excluir o cliente";
                } else {
                    mensagem = "Dados excluídos com sucesso";
                }
                dao.desconectar();
            }
        }
        request.setAttribute("m", mensagem);
        RequestDispatcher disp = request.getRequestDispatcher("mensagens.jsp");
        disp.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
