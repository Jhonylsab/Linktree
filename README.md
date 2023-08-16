# XPorcento

##  LinkTree
## Tópicos:

1. Configurar ambiente.
2. Instalar pacotes.
3. Referências do Streamlit.
4. Uso do Github no projeto.
5. Deploy no Streamlit.
6. Desenvolvendo em equipe no Github.


# Tutorial de Configuração do Projeto

##  1 - Configuração de ambiente

1. Fazer download e instalar a ferramenta [Python](https://www.python.org/downloads/). Instale o interpretador Python 3 em seu computador. Este é o programa que lê programas em Python e executa suas instruções

2. Em seguida instale a ferramenta Poetry, para gerenciamento de dependência e empacotamento em Python. Ele permite que você declare as bibliotecas das quais seu projeto depende e as gerenciará (instalará/atualizará) para você. 

    - O Poetry oferece um arquivo de bloqueio para garantir instalações repetíveis e pode criar seu projeto para distribuição (Poetry requer Python 3.7+). Realizar o clone do [repositorio Poetry](https://github.com/python-poetry/install.python-poetry.org). em seguida dar o seguinte comando no terminal: 

 `curl -sSL https://install.python-poetry.org | py -`

 3. Criearemos o projeto chamando o poetry usando o seguinte comando:
 `poetry new <nome do projeto> `  

 4. Isso criará o projeto com o nome dado e com o seguinte conteúdo:
    `poetry-demo 
        ├── pyproject.toml
        ├── README.md
        ├── poetry_demo
        │   └── __init__.py
        └── tests
            └── __init__.py 

 ## 2 - Instalação de pacotes

1. Usaremos o Streamlit para criação de app web interativo. Usamos o seguinte comando.

`poetry add streamlit`

2. Usaremos também o pillow, para usarmos imagem no web app. Usaremos o seguinte comando para instalação.

`poetry add pillow`

## 3 Referências Streamlit

- Documentação [streamlit](https://docs.streamlit.io/).
- [Video](https://www.youtube.com/watch?v=Ie5ef_R_k6I&t=3986s) referência para alguns comandos.
- [Comunidade streamlit](https://discuss.streamlit.io/)

## 4 Uso do Github no projeto

1. Ir no [Github](https://github.com/) e entrar com seu login e senha.

2. Ir em **seus repositórios** e criar um novo repositório.

3. Abrir o terminal e ir até a pasta a qual irá ficar o projeto.

4.  Dar o comando `git init` para criarmos um repositório git na pasta selecionada, esse comando irá criar toda a estrutura básica do repositório e criar a branch **main**. 
Iremos usar duas branches, a **main** para o uso do projeto e a **dev**, a qual irá ser usada para realizar as modificações no projeto e testes.

5. Para criar uma nova branch usamos o comando: `git checkout -b "nome da branch"`.
    - Para mudarmos para outra branch usamos: `git checkout (nome da branch)` 
    - Para juntar modificação de uma branch para a **main**, usamos: `git merge (nome da branch a ser juntada)`

6. Para adicionar todos os arquivos alterados à fila de atualizações do repositório, execute o comando: `git add .`, ou executar o comando e adicionar o arquivo que desejar realizar a atualização: `git add (arquivo)`.

7. Antes de sincronizar as alterações, configure seu usuário do GitHub com os comandos:
    `git config --global user.name "seu nome"`
    `git config --global "email no GitHub"`

8. Para realizar um commit, execute o comando:  
    `git commit -m "mensagem"` 
no qual “mensagem” geralmente é um resumo das alterações.

9. Adicione o remote, ou seja, o link para o servidor do seu projeto no GitHub:
    `git remote add origin (usuário no GitHub>/<nome do repositório>).git`

10. Por fim, envie as alterações com o comando:
    `git push -u origin (branch para qual deseja enviar)`

## 5 Deploy no Streamlit

1. Com o repositório criado no GitHub e o projeto estando nele, ir ao [site do streamlit](https://streamlit.io/) e realizar o login no mesmo. 
2. Feito isso, ir em new app, colocar o repositório do GitHub ao qual esta o projeto, selecionar a branch que esta sendo utilizada e dizer qual o arquivo principal do projeto.
- Após, dar o deploy para o por no ar.

## 6 Desenvolvendo em equipe no Github

 1. Há um repositório da X Porcento no GitHub, e para adicionar um novo colaborador na organização, vá em [GitHub.com](https://github.com/), clique na foto do seu perfil e vá em **suas organizações**.

- Clique no nome da sua organização, e após vá em **pessoas**.

- Clique em **convidar membro**.

- No campo de pesquisa, digite o nome do usuário, o nome completo ou o e-mail da pessoa que deseja adicionar e clique em **convidar**.

- A pessoa convidada receberá um e-mail com um convite para ingressar na organização.

2. Para adicionar um colaborador no projeto, vá em [GitHub.com](https://github.com/), clique no repositório que esta o projeto.

3. Na aba **settings**, vá em **manage acess**.

4. Vá em **invite a collaborator**.

5. Coloque o id ou e-mail do do GitHub do usúario a qual deseja adicionar ao projeto. 

6. Para fazermos um pull request, primeiro temos que fazer um **fork** do repositório o qual queremos realizar o pull request.

7. Após ter feito as alterações e feito o commit, abra o repositório no GitHub.com, e clique em **pull request** .

8. Escolha para onde deseja mandar e de onde a alteração feita.

9. Clique em **create pull request**.

10. Faça uma descrição da alteração realizada e como realizar o teste da alteração feita, e clique em **create pull request**.