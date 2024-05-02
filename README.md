# Atualização de Campanha:

O real objetivo deste trabalho é demonstrar, passo a passo, como realizar a virada de campanha do Banco Mercantil.

Ao final de cada mês, uma campanha de incentivo se encerra e outra é iniciada. A campanha que encerrou ficará em apuração durante o período da nova campanha que se inicia. Ou seja, ao final do mês de abril, por exemplo, a campanha de maio é criada e parametrizada como vigente, enquanto a campanha de abril é posta em apuração. Portanto, ao iniciar o mês de maio, a nova campanha é iniciada e durante este mês, no qual a campanha de maio esta vigente, a campanha do mês de abril ficará sendo apurada para bonificação dos colaboradores.

Essa atualização de uma campanha para outra, se trata, basicamente, de algumas mudanças de parâmetros e de alguns dados. Nessa fase, novas metas são recalculadas e a visualiazão do dashboard passa a considerar apenas os dados gerados no período que compreende o mês atual. 

Por tanto, o que se executou ou não da campanha que se encerra, será armazenado como histórico e o mês que se inicia terá novas metas calculadas. Neste caso, os paramêtros passarão a considerar apenas o que for executado dentro do novo período, assim é possível acompanharmos o efetivado do mês durante o período da campanha que segue como vigente.

## 🔨 Ferramentas Necessárias:

Para iniciar este projeto sera necessária a instalação das seguintes ferramentas:

- [Visual Studio Code](https://code.visualstudio.com/download)
- [Git](https://git-scm.com/downloads)
- [Python](https://www.python.org/downloads/)
- DBT

## :computer: Acessos Necessários:

Você irá necessitar de um usuário e uma senha habilitados via SSH. Esta solicitação se dá via e-mail a empresa para que sejam criados os seguintes acessos:

- SSH
- Devops 
- Airflow

## 🚀 Inicializando o projeto:

Após todos os acessos liberados e as ferramentas necessárias instaladas, navegue no explorador de arquivos de sua máquina até a pasta: ``K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede``. Para simplificar a criação de um novo projeto *DBT*, iremos clonar o projeto mais atual desta pasta e gerar uma cópia deste arquivo neste mesmo diretório.

> [!NOTE]
> Exemplo:\
> projeto mais atual: ``K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede\dbt_efet_campanhas_incentivo_rede_abr24`` \
> projeto clonado: ``K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede\dbt_efet_campanhas_incentivo_rede_abr24-Copia``

O arquivo original ``dbt_efet_campanhas_incentivo_rede_abr24`` deverá ser movido para a pasta ``K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede\Old``, na qual permanecerá a título de histórico. 

Já o arquivo clonado ``dbt_efet_campanhas_incentivo_rede_abr24-Copia`` deverá ser renomeado com o mês vigente, o qual irá se iniciar a nova campanha: ``dbt_efet_campanhas_incentivo_rede_mai24 ``.

Feito isso, este arquivo deverá ser aberto na IDE *Visual Studio Code*. Para isso, abra o *Visual Studio Code*, abra o terminal através do atalho ``Ctrl + ' ``. No terminal, digite o seguinte comando para navegar até a pasta do projeto:

``
cd K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede\dbt_efet_campanhas_incentivo_rede_mai24 
`` 

Clique no ``Enter`` para que o terminal acesse a pasta indicada no comando anterior. Na sequência, digite a linha de comando: ``code .``

Uma nova IDE do *Visual Studio Code* será aberta no projeto desejado ``dbt_efet_campanhas_incentivo_rede_mai24 ``. Para validar isso, o *VS code* deverá possuir uma ramificação de arquivos similar ao da imagem a seguir:\

![image](https://github.com/Banco-Mercantil/campaign_update/assets/88452990/866130d0-20cb-4f17-a672-c7f21c36089a)

Na etapa seguinte, iremos alterar alguns paramêtros de configuração para ajustar o arquivo ao periodo do mês vigente, neste caso, maio.\
Na ramificação de arquivos, a pasta ``parametros`` é composta por alguns arquivos ``.sql ``. No arquivo denominado ``periodos_camp.sql`` é definido duas variaveis para marcar o ínicio e o fim de cada campanha. Essas variáveis deverão ser atualizadas com a data de inicio e fim do mês vigente, ou seja, o período que compreende a nova campanha que se inicia.

Paramêtros de abril:

```
WITH PARAMETROS AS
(
  SELECT 
    CAST ('2024-04-01' AS DATE) AS INICIO_CAMP,
    CAST ('2024-04-30' AS DATE) AS FIM_CAMP
)
...
```

Parametros atualizados para o mês de maio:

```
WITH PARAMETROS AS
(
  SELECT 
    CAST ('2024-05-01' AS DATE) AS INICIO_CAMP,
    CAST ('2024-05-31' AS DATE) AS FIM_CAMP
)
...
```

Ao final deste mesmo arquivo, no paramêtro ``DESC_CAMP``, atualize o valor para o mês vigente, maio:

```
...
CAMPANHA MAI/24 AS DESC_CAMP
FROM PARAMETROS
```

Feito as alterações no arquivo ``periodos_camp.sql``, salve-o com o atalho ``Ctrl + s ``.\

### Configurando a Conexão com o Banco de Dados:

Ainda com o nosso projeto aberto na IDE *VS Code*, na raiz do projeto *DBT*, abra o arquivo denomominado: ``profiles.yml``. Este arquivo permite selecionar credenciais exclusivas de suas fontes e destinos de dados, aqui são descritos os perfis de banco de dados que serão conectados. 

Neste documento, iremos atualizar o nome do perfil que o DBT deverá usar no projeto para: ``dbt_efet_campanhas_incentivo_rede_mai24:``.

<img width="728" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/a8fd6bf3-75e2-4147-8a6c-fbd12af3b048">

No parâmetro ``schema``, atualize seu valor com ambiente de desenvolvimento: ``CAMP_INCENTIVO__DEV ``.

<img width="683" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/4cd509bb-3acd-4872-8aa1-98eb5422581c">

Nesta fase, caso você já tenha inicializado outros projetos *DBTs*, existirá em seu diretório, ``C:\Users\B045523``, uma pasta denomidada ``.dbt``. Nela, conterá dois arquivos essenciais: ``.user.yml`` e ``profiles.yml``.

O segundo, ``profiles.yml``, é o arquivo responsável por controlar os diferentes *perfis/profiles* para as diferentes conexões com os bancos de dados, como ambiente de desenvolvimento e produção. Este arquivo, normalmente, é criado, fora do projeto para evitar credenciais que sejam confidenciais, uma vez dado o comando ``dbt init``.

<img width="443" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/f132fc74-31fb-44b2-993b-c341fdcaff33">

Na imagem acima, é possível observar que temos um perfil chamado ``dbt_dominios`` e um destino chamado ``dev``. Por padrão, o destino refere-se a ``dev`` com as configurações de conexão do banco de dados. Além disso, é possível criar um ou mais perfis e alvos (*target*), permitindo trabalhar com diferentes ambientes.

Partindo desta premissa, vamos acrescentar um perfil a este arquivo, remetendo a nova campanha. Este processo é necessário, visto que o novo projeto foi clonado e não inicializado pelo método convencional, no qual é gerado todas as conexões e configurações de parâmetros pela linha de comando ``dbt init``. 

Portanto, com o arquivo ``C:\Users\B045523\profiles.yml`` aberto no *VS code*, procure pelo perfil da campanha que se encerra, ``dbt_efet_campanhas_incentivo_rede_abr24:``, e copie todo o trecho referente a ela. 

<img width="281" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/c8229f6b-2cf4-4339-907f-2f9345239122">

Ao final deste arquivo, cole o trecho copiado e ajuste o nome do perfil para o mesmo nome da nova campanha que se inicia, ou seja, o nome do novo projeto *DBT*: ``dbt_efet_campanhas_incentivo_rede_mai24:``. Já no parâmetro ``schema``, atualize seu valor com ambiente de desenvolvimento: ``CAMP_INCENTIVO__DEV ``. Para os demais, mantenha as mesmas configurações, visto que, a nova campanha será executada com as mesmas credenciais de banco de dados e esquemas da anterior.  

<img width="231" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/67f58053-3b12-4525-9f06-d61704d196c4">

Feito as alterações no arquivo ``C:\Users\B045523\profiles.yml``, salve-o com o atalho ``Ctrl + s ``.\
Neste momento os ajustes de conexão foram concluídos.

### Configurando o arquivo dbt_project.yml:

A próxima etapa requer a configuração do arquivo ``dbt_project.yml`` do nosso projeto. Todo projeto *DBT* possui este arquivo para configurar informações como nome do projeto, diretórios, perfis e tipo de materialização.

Logo, vamos retornar ao projeto clonado ``dbt_efet_campanhas_incentivo_rede_mai24`` e abrir o arquivo ``dbt_project.yml``. Aqui, iremos especificar o perfil ``dbt_efet_campanhas_incentivo_rede_mai24``, criado no arquivo ``C:\Users\B045523\profiles.yml`` que acabamos de salvar, no qual o *DBT* irá utilizar para este projeto.

Portanto, toda referência contida no arquivo ``dbt_project.yml`` ao projeto de origem ``dbt_efet_campanhas_incentivo_rede_abr24`` deverá ser atualizado com o valor do perfil que acabamos de criar: ``dbt_efet_campanhas_incentivo_rede_mai24``.

<img width="842" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/c16d853d-844b-4227-8eaf-a36976f73820">

Feito as alterações no projeto ``dbt_efet_campanhas_incentivo_rede_mai24``, salve-o com o atalho ``Ctrl + s ``.

## Executando o nosso modelo:

Execute o comando ``dbt debug``, no terminal, para testar a conexão do banco de dados e exibir informações para fins de depuração. Ao final da execução, uma mensagem de sucesso deverá ser exibida.

<img width="321" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/01804f47-3d4e-4cbc-aed9-fa2b67656ce7">

Verificado as conexões, execute o comando ``dbt run`` para criar o modelo baseado nos arquivos anteriores.\
O comando acima irá executar o projeto como um todo, ou seja, irá rodar todos os pacotes novamente. Porém, caso deseje executar apenas os arquivos que tiveram alteração ou que foram criados nesta nova campanha, é possível executar o comando: ``dbt run -s nome_do_arquivo --full-refresh``. Dessa forma, apenas o arquivo indicado será executado e não todo o pacote.





































