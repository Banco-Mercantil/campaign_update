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

## Material de apoio:

O presente projeto foi instruido pelo seguinte vídeo de apoio:

- [Vídeo de apoio - Parte 1](https://drive.google.com/file/d/1yXN4XdE1xfPpvXiAhqj_w6fHLLhqmqSN/view?usp=sharing)
- [Vídeo de apoio - Parte 2](https://drive.google.com/file/d/1BW0A9dx1G62odT5OPcNRbzcugwunsO4H/view?usp=sharing)

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

Nesta etapa, exclua a pasta ``target`` do projeto. Ela será gerada novamente com os parâmetros corretos, assim que executar o projeto.

## Executando o nosso modelo:

Execute o comando ``dbt debug``, no terminal, para testar a conexão do banco de dados e exibir informações para fins de depuração. Ao final da execução, uma mensagem de sucesso deverá ser exibida.

<img width="321" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/01804f47-3d4e-4cbc-aed9-fa2b67656ce7">

Verificado as conexões, execute o comando ``dbt run`` para criar o modelo baseado nos arquivos anteriores.\
O comando acima irá executar o projeto como um todo, ou seja, irá rodar todos os pacotes novamente. Porém, caso deseje executar apenas os arquivos que tiveram alteração ou que foram criados nesta nova campanha, é possível executar o comando: ``dbt run -s nome_do_arquivo --full-refresh``. Dessa forma, apenas o arquivo indicado será executado e não todo o pacote.

## Upload do novo projeto para a AWS:

Para migrar o projeto *DBT* da máquina para a *AWS* é necessário conectarmos remotamente na nuvem, através do protocolo *SSH*. Logo, no *VS Code*, no canto inferior esquerdo, há um ícone com duas setas de maior e menor que (><), selecione este para abrir uma janela remota. Um pop-up irá aparecer, você deverá selecionar a opção *Conectar-se ao Host...*.

<img width="590" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/343d20b6-9ede-456d-b190-11eaad28f104">

Na sequência, selecione o host ao qual se deseja conectar: ``10.221.0.36``.

<img width="575" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/044e1846-e2d8-4b1f-afc5-e1978bd83b98">

Uma nova *IDE* do *VS Code* será aberta e solicitará ao usuário que informe a senha de conexão:

<img width="695" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/63461ccb-0223-415c-b2f3-2e449b0acde7">

Após informar a senha, o *VS Code* deverá indicar a conexão remota no canto inferior esquerdo:

<img width="413" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/e4e64dbb-664a-4fe3-babc-6d63469d74a4">

Agora, clique no *Explorador de Arquivos*, em seguida, *Abrir Pasta*, para navegar no diretório da máquina em nuvem.

<img width="572" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/b9d56158-5e07-4896-b313-a1e803823ecd">

Automaticamente o diretório do seu usuário será preenchido na barra de pesquisa ao centro, selecione o ``ok`` para entrar nele. 

<img width="755" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/d3edb92f-9e33-4032-8e8d-8205890712b7">

O sistema, novamente, irá se solicitar a senha, informe-a e na sequência dê o ``Enter``. Feito isso, sua *IDE* deverá se parecer com a imagem abaixo:

<img width="960" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/34f59ccc-3967-4a2b-8418-0c475fbc7998">

Conectato remotamente a nuvem, é necessário logar a AWS para fazer qualquer alteração no *Airflow*. Nesta fase, digite, então, a linha de comando ``aws sso login``. Um pop-up será exibido, e nele, clique o botão *Abrir*.

<img width="292" alt="image" src="https://github.com/Banco-Mercantil/ssh_installation/assets/88452990/bad2ea14-77a8-422d-8a16-b6402388a3b6">

Nesta etapa, o sistema irá abrir um navegador da *AWS*, autorize a conexão pelo app *Authenticator*, cliquei no botão *Confirm and continue* para seguir. Na sequência clique em *Allow access*, ao final você deverá receber esta mensagem:

<img width="329" alt="image" src="https://github.com/Banco-Mercantil/ssh_installation/assets/88452990/e14052ca-0c29-4cbe-abb6-8fc0f32b4f79">

Você poderá fechar o navegador neste momento e retornar ao *VS Code*. Após logado, o primeiro passo a ser feito é executar o comando ``pull`` para que os arquivos e configurações que constam no repositório sejam carregados para a sua máquina. 

Utilize o atalho ``Ctrl + Shift + G`` para acessar a guia de controle do código-fonte. Clique nos *três pontinhos* e selecione a opção *Efetuar Pull*. 

<img width="685" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/fd8a5e2e-3369-414c-bd63-6beeb5b86d7c">

Feito isso, vamos abrir o arquivo python equivalente a campanha a qual estamos alterando, neste caso, a campanha *camp_incentivo_rede*. Na ramificação de arquivo, expanda a pasta ``gec_airflow`` e abra o arquivo ``main_dbt_camp_incentivo_rede.py``.

<img width="306" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/6e3580c1-596c-4de8-b376-b5fd00e7a6b1">

Aqui iremos gerenciar quais DAGs iremos manter a atualização recorrente por meio do agendamento. Neste arquivo iremos parar a atualização da campanha de março e manter a de abril. Ao final do arquivo iremos comentar o seguinte trecho de cógido:

```
task_dbt_campanha_mar24 = KubernetesPodOperator(
  task_id="dbt_efet_campanhas_incentivo_rede_mar24",
  name="dbt_efet_campanhas_incentivo_rede_mar24",
  image="841714811245.dkr.ecr.us-east-2.amazonaws.com/dbt_efet_campanhas_incentivo_rede_mar24:v1",
  namespace="processing",        
  is_delete_operator_pod=True,
  #node_selector={"app": "airflow"},
  image_pull_policy="Always",
  #do_xcom_push=True,
  in_cluster=True
)
```

```
  inicio >> task_dbt_campanha_abr24
  inicio >> task_dbt_campanha_mar24
  
  task_dbt_campanha_abr24 >> task_dbt_campanha_hist 
  task_dbt_campanha_mar24 >> task_dbt_campanha_hist 
  
  task_dbt_campanha_hist >> fim
```

Já a linha de código, ``inicio >> task_dbt_campanha_abr24 >> task_dbt_campanha_hist >> fim``, que está comentada iremos descomentar, deixando o arquivo desta forma:

<img width="675" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/52cacfca-ee32-4d28-bb72-212e345f161b">

Feito as alterações no projeto, iremos executar o comando ``Commit`` para salvar as modificações no *Airflow*. Utilize o atalho ``Ctrl + Shift + G``, novamente, para acessar a guia de controle do código-fonte. No box do *Airflow*, digite uma mensagem relevante para salvar as alterações e clique no botão *Commit*. Um pop-up de confirmação será aberto, basta clicar em *Yes*.

<img width="594" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/91603c66-6012-4ad6-b940-b64ba82828ba">

Na sequência, clique no botão *Sync changes* que aparecerá em seguida.

<img width="505" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/746570ee-2159-4fb7-9747-267bf7645631">

Agora que a atualização da campanha de março foi paralizada. Vamos navegar pelo repositório devops ``MB.AWS.BIZ.GED`` para o arquivo ``MB.AWS.BIZ.GED\1_Campanhas\Rede``. Aqui, nós iremos renomear o arquivo referente ao mês que teve sua atualização no Airflow paralizada, no caso, março, para o mês da campanha que se inicia, maio.

Nome anterior: ``dbt_efet_campanhas_incentivo_rede_mar24``

Nome atualizado: ``dbt_efet_campanhas_incentivo_rede_mai24``

Feito isso, iremos excluir a pasta ``models`` de dentro do projeto que acabamos de renomear. Através do *Explorador de Arquivos* da nossa máquina, iremos até o projeto *DBT* o qual trabalhos as etapas anteriores, copiar a pasta ``models`` de lá, retornar ao *VS Code* com a conexão remota *SSH* e colar no projeto a pasta novamente.

A próxima alteração será no arquivo ``build_push_dev.sh``. Neste, iremos substituir os parâmetros que referenciam a campanha de março para maio: ``dbt_efet_campanhas_incentivo_rede_mai24``.

<img width="597" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/ee8a2e40-adf5-4166-ad2a-620c7bd6a705">

Nos arquivos ``dbt_project.yml`` e ``Dockerfile``, também iremos substituir os parâmetros que referenciam a campanha de março para maio: ``dbt_efet_campanhas_incentivo_rede_mai24``.

Já no arquivo ``profiles.yml``, iremos alterar o perfil para referenciar maio, ``dbt_efet_campanhas_incentivo_rede_mai24``, e o *esquema* será atualizado com o valor ``CAMP_INCENTIVO_REDE_VIGENTE``.

<img width="573" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/3da5d00a-5e56-49c2-a46d-895bd98ed960">

Abra este mesmo arquivo ``profiles.yml``, porém, do projeto ``dbt_efet_campanhas_incentivo_rede_abr24``, o qual esta entrando em apuração, e atualize o parâmetro *esquema* para ``CAMP_INCENTIVO_REDE_APURAC``.

<img width="311" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/841adcd6-9cb8-48c8-9321-287657707bde">

Agora salve o arquivo com o atalho ``Ctrl + s ``.

Feito isso, vamos abrir o arquivo python, novamente, equivalente a campanha a qual estamos alterando, neste caso, a campanha *camp_incentivo_rede*. Na ramificação de arquivo, expanda a pasta ``gec_airflow`` e abra o arquivo ``main_dbt_camp_incentivo_rede.py``.

Aqui iremos reverter o processo que já fizemos, comentando a última linha de código ``inicio >> task_dbt_campanha_abr24 >> task_dbt_campanha_hist >> fim`` do arquivo e descomentando o seguinte trecho de código para, na sequência, alterarmos as referências de março para maio.

Trecho anterior:

```
task_dbt_campanha_mar24 = KubernetesPodOperator(
  task_id="dbt_efet_campanhas_incentivo_rede_mar24",
  name="dbt_efet_campanhas_incentivo_rede_mar24",
  image="841714811245.dkr.ecr.us-east-2.amazonaws.com/dbt_efet_campanhas_incentivo_rede_mar24:v1",
  namespace="processing",        
  is_delete_operator_pod=True,
  #node_selector={"app": "airflow"},
  image_pull_policy="Always",
  #do_xcom_push=True,
  in_cluster=True
)
```

```
  inicio >> task_dbt_campanha_abr24
  inicio >> task_dbt_campanha_mar24
  
  task_dbt_campanha_abr24 >> task_dbt_campanha_hist 
  task_dbt_campanha_mar24 >> task_dbt_campanha_hist 
  
  task_dbt_campanha_hist >> fim
```

Trecho atualizado:

```
task_dbt_campanha_mai24 = KubernetesPodOperator(
  task_id="dbt_efet_campanhas_incentivo_rede_mai24",
  name="dbt_efet_campanhas_incentivo_rede_mai24",
  image="841714811245.dkr.ecr.us-east-2.amazonaws.com/dbt_efet_campanhas_incentivo_rede_mai24:v1",
  namespace="processing",        
  is_delete_operator_pod=True,
  #node_selector={"app": "airflow"},
  image_pull_policy="Always",
  #do_xcom_push=True,
  in_cluster=True
)
```

```
  inicio >> task_dbt_campanha_abr24
  inicio >> task_dbt_campanha_mai24
  
  task_dbt_campanha_abr24 >> task_dbt_campanha_hist 
  task_dbt_campanha_mai24 >> task_dbt_campanha_hist 
  
  task_dbt_campanha_hist >> fim
```

Nesta fase do projeto, para garantir que os dados referentes ao mês de abril não sejam exibidos e armazenados duplicados na base *histórico* é necessário que realizamos uma limpeza nas tabelas incrementais, eliminando os resíduos do mês de abril, restando apenas os dados do mês da campanha vigente, maio.

Para isso, utilizaremos a seguintes instruções SQL no *Snowflake*, disponíveis no arquivo: ``K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede\EXECUTAR_MIG_SCHEMAS_CAMPANHA.txt``:

```
-- TRANSFERE TABELA DE METAS DE EMPRESTIMO

TRUNCATE TABLE SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_APURAC.int_metas__individuais;

    INSERT INTO SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_APURAC.int_metas__individuais   

        SELECT * FROM SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_VIGENTE.int_metas__individuais;

-- TRANSFERE TABELA DE PARTICIPANTES POR DIA UTIL        

TRUNCATE TABLE SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_APURAC.int__participantes_dia_util;

    INSERT INTO SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_APURAC.int__participantes_dia_util   

        SELECT * FROM SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_VIGENTE.int__participantes_dia_util;

-- TRANSFERE TABELA DE METAS DE DPZ

TRUNCATE TABLE SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_APURAC.int_dpz__metas;

    INSERT INTO SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_APURAC.int_dpz__metas   

        SELECT * FROM SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_VIGENTE.int_dpz__metas;

-- TRANSFERE TABELA DE METAS DE SERVIÇOS 

TRUNCATE TABLE SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_APURAC.int_servicos_meta__geral;

    INSERT INTO SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_APURAC.int_servicos_meta__geral   

        SELECT * FROM SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_VIGENTE.int_servicos_meta__geral;

-- TRANSFERE TABELA DE PRODUÇÃO DE SERVIÇOS

TRUNCATE TABLE SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_APURAC.int_servicos_prod__geral;

    INSERT INTO SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_APURAC.int_servicos_prod__geral   

        SELECT * FROM SDX_EXCELENCIA_COMERCIAL.CAMP_INCENTIVO__REDE_VIGENTE.int_servicos_prod__geral;
```

A próxima etapa é buildar o projeto do mês de abril: ``dbt_efet_campanhas_incentivo_rede_abr24`` . Processo de compilar e montar um programa de computador a partir do código-fonte. Em outras palavras, a *build* é a transformação do código-fonte em um executável ou em um pacote que pode ser implantado em um ambiente de produção.

É necessário certificar que estamos logado na nuvem para fazer qualquer tipo de alteração. Caso queira confirmar execute o código ``aws sso login``.Um pop-up será exibido, e nele, clique o botão *Abrir*.

<img width="292" alt="image" src="https://github.com/Banco-Mercantil/ssh_installation/assets/88452990/bad2ea14-77a8-422d-8a16-b6402388a3b6">

O sistema irá abrir um navegador da *AWS*, autorize a conexão pelo app *Authenticator*, cliquei no botão *Confirm and continue* para seguir. Na sequência clique em *Allow access*, ao final você deverá receber esta mensagem:

<img width="329" alt="image" src="https://github.com/Banco-Mercantil/ssh_installation/assets/88452990/e14052ca-0c29-4cbe-abb6-8fc0f32b4f79">

Retorne ao *VS Code*, no terminal, entre na pasta do projeto de abril, digitando o seguinte comando:

``cd MB.AWS.BIZ.GED\1_Campanhas\Rede\dbt_efet_campanhas_incentivo_rede_abr24``

Na sequência, digite o código:

``.\build_push_dev.sh``

O sistema irá gerar um novo executável após as configurações feitas: migrar o projeto para o esquema ``CAMP_INCENTIVO__REDE_APURAC``. Faremos o mesmo processo para o novo projeto do mês de maio: ``dbt_efet_campanhas_incentivo_rede_mai24``.

No terminal, retorne ao diretorio ``home`` e, em seguida, entre na pasta do projeto de maio, digitando o seguinte comando:

```
cd 
```

```
cd MB.AWS.BIZ.GED\1_Campanhas\Rede\dbt_efet_campanhas_incentivo_rede_mai24``
```

```
.\build_push_dev.sh
```

Ao finalizar o processamento da ``build``, vamos salvar as alterações no *Airflow*. 

Vamos abrir o arquivo python equivalente a campanha a qual estamos alterando, neste caso, a campanha *camp_incentivo_rede*. Na ramificação de arquivo, expanda a pasta ``gec_airflow`` e abra o arquivo ``main_dbt_camp_incentivo_rede.py``.

Neste arquivo, no parâmetro ``docs``, iremos passar o valor da mesma mensagem que vamos informar ao comitar o projeto no *Airflow*: 

``DAG para DBT das campanhas abril e maio 2024``.

<img width="248" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/90c1b6b8-dd24-4d51-9dc5-76a9505144e0">

Utilize o atalho ``Ctrl + Shift + G`` para acessar a guia de controle do código-fonte. No box do *Airflow*, digite uma mensagem relevante para salvar as alterações: ``dag campanha abril e maio 2024`` e clique no botão *Commit*. Um pop-up de confirmação será aberto, basta clicar em *Yes*.

<img width="594" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/91603c66-6012-4ad6-b940-b64ba82828ba">

Na sequência, clique no botão *Sync changes* que aparecerá em seguida.

Agora vamos salvar as alterações no repositório DevOps ``MB.AWS.BIZ.GED``. No box do repositório,  digite uma mensagem relevante para salvar as alterações: ``campanha de maio 2024`` e clique no botão *Commit*. Um pop-up de confirmação será aberto, basta clicar em *Yes*.

O sistema irá solicitar o usuário (matrícula) e a senha, informe-os, respectivamente, e dê o ``Enter``.

Em uma nova guia do *VS Code*, vamos retornar ao projeto ``dbt_efet_campanhas_incentivo_rede_abr24``.



