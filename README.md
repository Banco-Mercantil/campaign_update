# Atualização de Campanha:

O real objetivo deste trabalho é demonstrar, passo a passo, como realizar a virada de campanha do Banco Mercantil.

Ao final de cada mês, uma campanha de incentivo se encerra e outra é iniciada. Essa atualização, se trata, basicamente, de algumas mudanças de parâmetros e dos dados. Nessa fase, novas metas são recalculadas e a visualiazão do dashboard passa a considerar apenas os dados gerados no período que compreende o mês atual. 

Por tanto, o que se executou ou não da campanha que se encerra, será armazenado como histórico e o mês que se inicia terá novas metas calculadas. Neste caso, os paramêtros passarão a considerar apenas o que for executado dentro do novo período, assim é possível acompanharmos o efetivado do mês durante o período da campanha vigente.

## 🔨 Ferramentas Necessárias:

Para iniciar este projeto sera necessária a instalação das seguintes ferramentas:

- [Visual Studio Code](https://code.visualstudio.com/download)
- [Git](https://git-scm.com/downloads)
- [Python](https://www.python.org/downloads/)
- DBT

## Acessos Necessários:

Você irá necessitar de um usuário e uma senha habilitados via SSH. Esta solicitação se dá via e-mail a empresa para que sejam criados os seguintes acessos:

- SSH
- Devops 
- Airflow

## 🚀 Inicializando o projeto:

Após todos os acessos liberados e as ferramentas necessárias instaladas, navegue no explorador de arquivos de sua máquina até a pasta: ``K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede``. Para simplificar a criação de um novo projeto DBT, iremos clonar o projeto mais atual desta pasta e gerar uma cópia deste arquivo neste mesmo diretório.

> [!NOTE]
> Exemplo:\
> projeto mais atual: ``K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede\dbt_efet_campanhas_incentivo_rede_abr24``\
> projeto clonado: ``K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede\dbt_efet_campanhas_incentivo_rede_abr24-Copia``\

O arquivo original ``dbt_efet_campanhas_incentivo_rede_abr24`` deverá ser movido para a pasta ``K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede\Old``, na qual permanecerá a título de histórico. Já o arquivo clonado ``dbt_efet_campanhas_incentivo_rede_abr24-Copia`` deverá ser renomeado com mês vigente, o qual irá se iniciar a nova campanha: ``dbt_efet_campanhas_incentivo_rede_mai24``.

Feito isso, este arquivo deverá ser aberto na IDE *Visual Studio Code*. Para isso, abra o *Visual Studio Code*, na IDE abra o terminal através do atalho ``Ctrl + ' ``. No terminal, digite o seguinte comando para navegar até a pasta do projeto:

``
cd K:\GEC\2024\04. Dados\0_Snowflake\1_Campanhas\Rede\dbt_efet_campanhas_incentivo_rede_mai24 
`` 

Clique no ``Enter`` para que o terminal acesse a pasta indicada no comando anterior. Na sequência, digite a linha de comando:

``
code .
``

Uma nova IDE do *Visual Studio Code* será aberta no projeto desejado ``dbt_efet_campanhas_incentivo_rede_mai24 ``. Para validar isso, o *VS code* deverá possuir uma ramificação de arquivos similar ao da imagem a seguir:\
<img width="173" alt="image" src="https://github.com/Banco-Mercantil/campaign_update/assets/88452990/4196eb9a-9331-41a9-ab21-04bbe0978440">





