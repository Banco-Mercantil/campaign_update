

------------------------------------------CAMPANHA REDE---------------------------------------------

--TRANSFERE TABELA DE PARTICIPANTES POR DIA UTIL        
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.int__participantes_dia_util;

INSERT INTO sdx_excelencia_comercial.camp_incentivo__rede_apurac.int__participantes_dia_util   
  SELECT * FROM sdx_excelencia_comercial.camp_incentivo__rede_vigente.int__participantes_dia_util;



--TRANSFERE TABELA DE METAS DE EMPRESTIMO
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.int_metas__individuais;

INSERT INTO sdx_excelencia_comercial.camp_incentivo__rede_apurac.int_metas__individuais
  SELECT * FROM sdx_excelencia_comercial.camp_incentivo__rede_vigente.int_metas__individuais;



--TRANSFERE TABELA DE METAS DE DPZ
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.int_dpz__metas;

INSERT INTO sdx_excelencia_comercial.camp_incentivo__rede_apurac.int_dpz__metas
  SELECT * FROM sdx_excelencia_comercial.camp_incentivo__rede_vigente.int_dpz__metas;



--TRANSFERE TABELA DE METAS DE SERVIÇOS 
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.int_servicos_meta__geral;

INSERT INTO sdx_excelencia_comercial.camp_incentivo__rede_apurac.int_servicos_meta__geral   
  SELECT * FROM sdx_excelencia_comercial.camp_incentivo__rede_vigente.int_servicos_meta__geral;



--TRANSFERE TABELA DE PRODUÇÃO DE SERVIÇOS
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.int_servicos_prod__geral;

INSERT INTO sdx_excelencia_comercial.camp_incentivo__rede_apurac.int_servicos_prod__geral   
  SELECT * FROM sdx_excelencia_comercial.camp_incentivo__rede_vigente.int_servicos_prod__geral;





------------------------------------------CAMPANHA BEM AQUI---------------------------------------------


--TRANSFERE TABELA DE PARTICIPANTES POR DIA UTIL        
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.int__participantes_dia_util;

INSERT INTO sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.int__participantes_dia_util   
  SELECT * FROM sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.int__participantes_dia_util;



--TRANSFERE TABELA DE METAS DE EMPRESTIMO
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.int_metas__individuais;

INSERT INTO sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.int_metas__individuais
  SELECT * FROM sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.int_metas__individuais;


--TRANSFERE TABELA DE METAS DE DPZ - BEM AQUI NÃO TEM 
-- TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.int_dpz__metas;

-- INSERT INTO sdx_excelencia_comercial.camp_incentivo__rede_apurac.int_dpz__metas
--   SELECT * FROM sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.int_dpz__metas;


--TRANSFERE TABELA DE METAS DE SERVIÇOS 
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.int_servicos_meta__geral;

INSERT INTO sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.int_servicos_meta__geral   
  SELECT * FROM sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.int_servicos_meta__geral;



--TRANSFERE TABELA DE PRODUÇÃO DE SERVIÇOS
TRUNCATE TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.int_servicos_prod__geral;

INSERT INTO sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.int_servicos_prod__geral   
  SELECT * FROM sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.int_servicos_prod__geral;










