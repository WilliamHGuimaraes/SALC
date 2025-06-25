# SALC
Sistema de Controle de Prazos SALC

## 📘 Descrição do Projeto

Este sistema foi desenvolvido para atender a uma necessidade real do Setor de Aquisição, Licitações e Contratos (SALC) de uma unidade do Exército Brasileiro: controlar prazos de entrega de materiais adquiridos por fornecedores após a emissão de empenho.

A aplicação é web, simples, dinâmica e responsiva, desenvolvida com **Vue.js** e **Bootstrap**. Ela oferece recursos para cadastro de contratos, acompanhamento visual do status de entrega (com alertas por cor), além de um relatório simples para apoio à gestão.

---

## ⚙️ Instruções de Instalação

1. **Requisitos**:  
   - Navegador moderno (Google Chrome, Firefox, Edge, etc.)  
   - Conexão com a internet para carregar as bibliotecas via CDN

2. **Instalação**:  
   - Faça o download do projeto completo (.zip) ou clone o repositório.

3. **Execução**:  
   - Dê um duplo clique no arquivo `index.html`.
   - A aplicação abrirá diretamente no navegador (não precisa de servidor).

---

## 🚀 Instruções de Uso

- Acesse a página principal (`index.html`).
- Preencha os campos do formulário para cadastrar um contrato:
  - Fornecedor
  - Produto
  - Data de empenho
  - Prazo de entrega
- Clique em **Cadastrar**.
- O contrato aparecerá na lista com uma cor de status:
  - 🟢 Verde: Dentro do prazo
  - 🟡 Amarelo: Atraso entre 31 e 60 dias
  - 🔴 Vermelho: Atraso superior a 60 dias
- No final da página, um relatório mostra o total de contratos por status.
