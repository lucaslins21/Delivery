Feature: Cadastro e manutenção de itens no cardápio
    As a proprietário do estabelecimento
    I want to poder adicionar, remover e editar itens
    So that o cardápio mantenha-se atualizado

Scenario: Adição de novo item com sucesso
    Given que estou logado como administrador
    When eu acessar a opção "Gerenciar cardápio"
    And clicar na opção "Adicionar item"
    Then deve aparecer um novo item no cardápio

Scenario: Excluir item do cardápio com sucesso
    Given que estou logado como administrador
    When eu acessar a opção "Gerenciar cardápio"
    And selecionar um item
    And clicar no botão "Deletar"
    Then o item selecionado deve ser removido do cardápio

Scenario: Edição dos campos de um item com sucesso
    Given que estou logado como administrador
    When eu acessar a seção "Gerenciar cardápio"
    And selecionar um item
    And editar os campos que eu quero
    And clicar em "Salvar"
    Then o item com os dados atualizado deve ser exibido no cardápio

Scenario: Sair do Gerenciar Cardápio/Cancelar alterações
    Given que estou logo como administrador
    And estou na página "Gerenciar cardápio"
    And fiz alguma alteração no cardápio
    When clicar em "Cancelar"
    Then voltará para página inicial
