programa {
  inclua biblioteca Arquivos --> a


  /* Tabela de clientes*/
  cadeia email_cliente[200], nome_cliente[200], id_cliente[200], cpf_cliente[200], status_cliente[200], idade_cliente[200]

  /* Tabela de funcionários*/
  cadeia email_funcionario[13], funcao_funcionario[13], nome_funcionario[13], matricula_funcionario[13], cpf_funcionario[13], status_funcionario[13], nivel_funcionario[13]


  /* Tabela de produtos*/
  cadeia nome_produto[122], tipo_produto[122], fornecedor_produto[122], id_produto[122], preco_produto[122], disponibilidade_produto[122]

  //Tabela de vendas
  cadeia id_venda[241], produto_venda[241], id_comprador_venda[241], data_venda[241], desconto_venda[241]
  
  
  //Função para imprimir vários caracteres em sequência
  funcao imp_Tela(cadeia separa, inteiro qtd) {
    inteiro contador
    para(contador=0;contador<qtd;contador++) {
      escreva(separa)
    }
  }

  //Função para criar arquivo .txt
  funcao criar_txt(cadeia nome_Arquivo, cadeia texto) {
  	inteiro arquivo = a.abrir_arquivo(nome_Arquivo, a.MODO_ESCRITA)
  	a.escrever_linha(texto, arquivo)
  	a.fechar_arquivo(arquivo)
  }
  
  //Função para adição de dados em arquivo txt
  funcao adicionar_txt(cadeia nome_Arquivo, cadeia texto, cadeia dado) {
    inteiro arquivo = a.abrir_arquivo(nome_Arquivo, a.MODO_ACRESCENTAR)
    a.escrever_linha(texto + dado, arquivo)
    a.fechar_arquivo(arquivo)
  }

  //Função que verifica se arquivo existe/está vazio
 	

  //Função para cadastro de funcionários e colocar dentro do arquivo txt de funcionários
  funcao cad_Funcionario(inteiro pos) {
    cadeia digitado

    inteiro arquivo = a.abrir_arquivo("funcionarios.txt", a.MODO_LEITURA)
    cadeia linha = a.ler_linha(arquivo)
    a.fechar_arquivo(arquivo)

    se(linha == ""){
      criar_txt("./funcionarios.txt", "Funcionários:\n")
    }

    arquivo = a.abrir_arquivo("./funcionarios.txt", a.MODO_ACRESCENTAR)
    a.escrever_linha("\n########################\n", arquivo)
    a.fechar_arquivo(arquivo)

    escreva("\nDigite o nome do funcionário: ")
    leia(digitado)
    nome_funcionario[pos]=digitado
    adicionar_txt("./funcionarios.txt", "Nome: ", digitado)
    
    escreva("Digite a matrícula do funcionário: ")
    leia(digitado)
    matricula_funcionario[pos]=digitado
    adicionar_txt("./funcionarios.txt", "Matrícula: ", digitado)
    
    escreva("Digite o CPF do funcionário: ")
    leia(digitado)
    cpf_funcionario[pos]=digitado
    adicionar_txt("./funcionarios.txt", "CPF: ", digitado)

    escreva("Digite o email do funcionário: ")
    leia(digitado)
    email_funcionario[pos]=digitado
    adicionar_txt("./funcionarios.txt", "Email: ", digitado)

    escreva("Digite o nível do funcionário: ")
    leia(digitado)
    nivel_funcionario[pos]=digitado
    adicionar_txt("./funcionarios.txt", "Nível: ", digitado)

    escreva("Digite a funcao do funcionário: ")
    leia(digitado)
    funcao_funcionario[pos]=digitado
    adicionar_txt("./funcionarios.txt", "Função: ", digitado)

    escreva("Digite o status do funcionário: ")
    leia(digitado)
    status_funcionario[pos]=digitado
    adicionar_txt("./funcionarios.txt", "Status: ", digitado)

    arquivo = a.abrir_arquivo("./funcionarios.txt", a.MODO_ACRESCENTAR)
    a.escrever_linha("\n########################\n", arquivo)
    a.fechar_arquivo(arquivo)
  }

  funcao cad_Cliente(inteiro pos) {
	cadeia digitado

    inteiro arquivo = a.abrir_arquivo("clientes.txt", a.MODO_LEITURA)
    cadeia linha = a.ler_linha(arquivo)
    a.fechar_arquivo(arquivo)

    se(linha == ""){
      criar_txt("./clientes.txt", "Clientes:\n")
    }

    arquivo = a.abrir_arquivo("./clientes.txt", a.MODO_ACRESCENTAR)
    a.escrever_linha("\n########################\n", arquivo)
    a.fechar_arquivo(arquivo)

    	escreva("\nDigite o id do cliente: ")
    	leia(digitado)
    	id_cliente[pos]=digitado
    	adicionar_txt("./clientes.txt", "Id: ", digitado)
    
    	escreva("Digite o nome do cliente: ")
    	leia(digitado)
    	nome_cliente[pos]=digitado
    	adicionar_txt("./clientes.txt", "Nome: ", digitado)
    
    	escreva("Digite o CPF do cliente: ")
    	leia(digitado)
    	cpf_cliente[pos]=digitado
    	adicionar_txt("./clientes.txt", "CPF: ", digitado)

    	escreva("Digite o email do cliente: ")
    	leia(digitado)
    	email_cliente[pos]=digitado
    	adicionar_txt("./clientes.txt", "Email: ", digitado)

    	escreva("Digite o idade do cliente: ")
    	leia(digitado)
    	idade_cliente[pos]=digitado
    	adicionar_txt("./clientes.txt", "Idade: ", digitado)

    	escreva("Digite o status do cliente: ")
    	leia(digitado)
    	status_cliente[pos]=digitado
    	adicionar_txt("./clientes.txt", "Status: ", digitado)

    	arquivo = a.abrir_arquivo("./clientes.txt", a.MODO_ACRESCENTAR)
    	a.escrever_linha("\n########################\n", arquivo)
    	a.fechar_arquivo(arquivo)
  }

  funcao cad_Produto(inteiro pos) {
	cadeia digitado

    inteiro arquivo = a.abrir_arquivo("produtos.txt", a.MODO_LEITURA)
    cadeia linha = a.ler_linha(arquivo)
    a.fechar_arquivo(arquivo)

    se(linha == ""){
      criar_txt("./produtos.txt", "Produtos:\n")
    }

    arquivo = a.abrir_arquivo("./produtos.txt", a.MODO_ACRESCENTAR)
    a.escrever_linha("\n########################\n", arquivo)
    a.fechar_arquivo(arquivo)

	escreva("\nDigite o id do produto: ")
    	leia(digitado)
    	id_produto[pos]=digitado
    	adicionar_txt("./produtos.txt", "Id: ", digitado)

    	escreva("\nDigite o nome do produto: ")
    	leia(digitado)
    	nome_produto[pos]=digitado
    	adicionar_txt("./produtos.txt", "Nome: ", digitado)
    
    	escreva("\nDigite o tipo do produto: ")
    	leia(digitado)
    	tipo_produto[pos]=digitado
    	adicionar_txt("./produtos.txt", "Tipo: ", digitado)
    
    	escreva("\nDigite o fornecedor do produto: ")
    	leia(digitado)
    	fornecedor_produto[pos]=digitado
    	adicionar_txt("./produtos.txt", "Fornecedor: ", digitado)

    	escreva("\nDigite o preço do produto: ")
    	leia(digitado)
    	preco_produto[pos]=digitado
    	adicionar_txt("./produtos.txt", "Preço: ", digitado)

    	escreva("\nDigite o disponibilidade do produto: ")
    	leia(digitado)
    	disponibilidade_produto[pos]=digitado
    	adicionar_txt("./produtos.txt", "Disponiblidade: ", digitado)

    	arquivo = a.abrir_arquivo("./produtos.txt", a.MODO_ACRESCENTAR)
    	a.escrever_linha("\n########################\n", arquivo)
    	a.fechar_arquivo(arquivo)
  }

  funcao registro_venda(inteiro pos) {
  	cadeia digitado

    inteiro arquivo = a.abrir_arquivo("vendas.txt", a.MODO_LEITURA)
    cadeia linha = a.ler_linha(arquivo)
    a.fechar_arquivo(arquivo)

    se(linha == ""){
      criar_txt("./vendas.txt", "Vendas:\n")
    }

    arquivo = a.abrir_arquivo("./vendas.txt", a.MODO_ACRESCENTAR)
    a.escrever_linha("\n########################\n", arquivo)
    a.fechar_arquivo(arquivo)

	escreva("\nDigite o id da venda: ")
    	leia(digitado)
    	id_venda[pos]=digitado
    	adicionar_txt("./vendas.txt", "Id: ", digitado)

    	escreva("\nDigite o id do produto: ")
    	leia(digitado)
    	produto_venda[pos]=digitado
    	adicionar_txt("./vendas.txt", "Produto: ", digitado)
    
    	escreva("\nDigite o id do comprador: ")
    	leia(digitado)
    	id_comprador_venda[pos]=digitado
    	adicionar_txt("./vendas.txt", "Comprador: ", digitado)
    
    	escreva("\nDigite a data da venda: ")
    	leia(digitado)
    	data_venda[pos]=digitado
    	adicionar_txt("./vendas.txt", "Data: ", digitado)

    	escreva("\nDigite o desconto da venda: ")
    	leia(digitado)
    	desconto_venda[pos]=digitado
    	adicionar_txt("./vendas.txt", "Desconto: ", digitado)

    	arquivo = a.abrir_arquivo("./vendas.txt", a.MODO_ACRESCENTAR)
    	a.escrever_linha("\n########################\n", arquivo)
    	a.fechar_arquivo(arquivo)
  }

  funcao sair() {

  }

  funcao menu_Principal() {
    inteiro opcao
    
    limpa()
    imp_Tela("#",50)
    escreva("\n Menu Princiapal\n")
    imp_Tela("-",24)
    escreva("\n 1) Cadastrar funcionário \n 2) Cadastrar cliente \n 3) Cadastrar produto \n 4) Registrar venda \n 5) Sair \n")
    imp_Tela("-",24)
    escreva("\n Escolha uma opção: ")
    leia(opcao)
    imp_Tela("#",50)

    escolha (opcao) {
      caso 1: 
        cad_Funcionario(1)
        pare
      caso 2:
        cad_Cliente(1)
        pare
      caso 3:
        cad_Produto(1)
        pare
      caso 4:
        registro_venda(1)
        pare
      caso 5:
        sair()
      caso contrario:
        menu_Principal()
    }
    menu_Principal()
  }
  
  funcao inicio() {
    menu_Principal()
    sair()
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7058; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */