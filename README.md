# Atualização de Campanha:

O real objetivo deste trabalho é demonstrar, passo a passo, como realizar a virada de campanha do Banco Mercantil.

Ao final de cada mês, uma campanha de incentivo se encerra e outra é iniciada. A campanha que se encerrou ficará em apuração o durante o período da campanha que se inicia. Ou seja, ao final do mês de abril, por exemplo, a campanha de maio é criada e parametrizada como vigente, enquanto a campanha de abril é posta em apuração. Ao iniciar o mês de maio, a nova campanha é iniciada e durante este mês, no qual a campanha de maio esta vigente, a campanha do mês de abril ficará sendo apurada durante todo este período para bonificação dos colaboradores.

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

Após todos os acessos liberados e as ferramentas necessárias instaladas, navegue no explorador de arquivos de sua máquina até a pasta: ``K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede``. Para simplificar a criação de um novo projeto DBT, iremos clonar o projeto mais atual desta pasta e gerar uma cópia deste arquivo neste mesmo diretório.

> [!NOTE]
> Exemplo:\
> projeto mais atual: ``K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede\dbt_efet_campanhas_incentivo_rede_abr24`` \
> projeto clonado: ``K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede\dbt_efet_campanhas_incentivo_rede_abr24-Copia``

O arquivo original ``dbt_efet_campanhas_incentivo_rede_abr24`` deverá ser movido para a pasta ``K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede\Old``, na qual permanecerá a título de histórico. 

Já o arquivo clonado ``dbt_efet_campanhas_incentivo_rede_abr24-Copia`` deverá ser renomeado com o mês vigente, o qual irá se iniciar a nova campanha: ``dbt_efet_campanhas_incentivo_rede_mai24 ``.

Feito isso, este arquivo deverá ser aberto na IDE *Visual Studio Code*. Para isso, abra o *Visual Studio Code*, na IDE abra o terminal através do atalho ``Ctrl + ' ``. No terminal, digite o seguinte comando para navegar até a pasta do projeto:

``
cd K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede\dbt_efet_campanhas_incentivo_rede_mai24 
`` 

Clique no ``Enter`` para que o terminal acesse a pasta indicada no comando anterior. Na sequência, digite a linha de comando: ``code .``

Uma nova IDE do *Visual Studio Code* será aberta no projeto desejado ``dbt_efet_campanhas_incentivo_rede_mai24 ``. Para validar isso, o *VS code* deverá possuir uma ramificação de arquivos similar ao da imagem a seguir:\

![image](https://github.com/Banco-Mercantil/campaign_update/assets/88452990/866130d0-20cb-4f17-a672-c7f21c36089a)

Na etapa seguinte, iremos alterar alguns paramêtros de configuração para ajustar o arquivo ao periodo do mês vigente, neste caso, maio.\
Na ramificação de arquivos, a pasta ``parametros`` é composta por alguns arquivos ``.sql ``. No arquivo denominado ``periodos_camp.sql`` é definido duas variaveis para marcar o ínicio e o fim de cada campanha. Essas variáveis deveram ser atualizadas com a data de inicio e fim do mês vigente, ou seja, o período que compreende a nova campanha que se inicia.

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

``
...
CAMPANHA MAI/24 AS DESC_CAMP
FROM PARAMETROS
``

Feito as alterações no arquivo ``periodos_camp.sql``, salve-o com o atalho ``Ctrl + s ``.\

### Configurando a Conexão com o Banco de Dados:

Caso você já tenha inicializado outros projetos *DBTs*, existirá em seu diretório, ``C:\Users\B045523``, uma pasta denomidada ``.dbt``. Nela, conterá dois arquivos essenciais: ``.user.yml`` e ``profiles.yml``.

O segundo, ``profiles.yml``, é o arquivo é responsável por controlar os diferentes perfis/profiles para as diferentes conexões com os bancos de dados, como ambiente de desenvolvimento e produção. Este arquivo, normalmente, é criado fora do projeto para evitar credenciais que sejam confidenciais, uma vez dado o comando ``dbt init``.

<img width="443" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/f132fc74-31fb-44b2-993b-c341fdcaff33">

Na imagem acima, é possível observar que temos um perfil chamado ``dbt_dominios`` e um destino chamado ``dev``, por padrão, o destino refere-se a ``dev`` com as configurações de conexão do banco de dados. Além disso, é possível criar um ou mais perfis e alvos (*target*), permitindo trabalhar com diferentes ambientes.

Partindo desta premissa, vamos acrescentar um perfil a este arquivo, remetendo a nova campanha. Este processo é necessário, visto que o novo projeto foi clonado e não inicializado pelo método convenciona, no qual é gerando todas as conexões e configurações de parâmetros pela linha de comando ``dbt init``. 

Portanto, com o arquivo ``profiles.yml`` aberto no *VS code*, procure pelo perfil da campanha que se encerra, ``dbt_efet_campanhas_incentivo_rede_abr24:``, e copie todo o trecho refente a ela. 


<img width="281" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/c8229f6b-2cf4-4339-907f-2f9345239122">



Outro detalhe importante é que o perfil dbt_blog deve ser especificado no arquivo dbt_project.yml como um perfil padrão. Nas próximas seções, discutiremos o que é e como o arquivo dbt_project.yml funciona.































