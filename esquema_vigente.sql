-----------------------------------------------CAMPANHA REDE-----------------------------------------------------

--LIMPA TABELA DE PARTICIPANTES POR DIA UTIL   
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.int__participantes_dia_util;

--LIMPA TABELA DE METAS DE EMPRESTIMO
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.int_metas__individuais;

--LIMPA TABELA DE METAS DE DPZ
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.int_dpz__metas;

--LIMPA TABELA DE METAS DE SERVIÇOS 
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.int_servicos_meta__geral;

--LIMPA TABELA DE PRODUÇÃO DE SERVIÇOS
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.int_servicos_prod__geral;


-----------------------------------------------CAMPANHA BEM AQUI-----------------------------------------------------

--LIMPA TABELA DE PARTICIPANTES POR DIA UTIL   
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.int__participantes_dia_util;

--LIMPA TABELA DE METAS DE EMPRESTIMO
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.int_metas__individuais;

--LIMPA TABELA DE METAS DE DPZ - BEM AQUI NÃO TEM DEPÓSITO A PRAZO
-- TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.int_dpz__metas;

--LIMPA TABELA DE METAS DE SERVIÇOS 
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.int_servicos_meta__geral;

--LIMPA TABELA DE PRODUÇÃO DE SERVIÇOS
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.int_servicos_prod__geral;
