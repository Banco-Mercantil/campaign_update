-----------------------------------------------------ALTER TABLE----------------------------------------------
-----------------------------------------------------CAMPANHA REDE----------------------------------------------

EXEMPLO: 
    ALTER TABLE table ADD COLUMN new_col VARCHAR DEFAULT 'value';
    ALTER TABLE t1 ADD COLUMN c5 VARCHAR DEFAULT 12345::VARCHAR;


--int_metas__individuais

    --camp_incentivo_dev ok
ALTER TABLE sdx_excelencia_comercial.camp_incentivo_dev.int_metas__individuais ADD COLUMN meta_cartao NUMBER(38,0);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo_dev.int_metas__individuais ADD COLUMN meta_individ_crt_consig_dia NUMBER(38,0);
SELECT meta_individ_crt_consig_dia FROM sdx_excelencia_comercial.camp_incentivo_dev.int_metas__individuais;

    --camp_incentivo__rede_vigente
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.int_metas__individuais ADD COLUMN meta_cartao NUMBER(38,0);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.int_metas__individuais ADD COLUMN meta_individ_crt_consig_dia NUMBER(38,0);
SELECT meta_individ_crt_consig_dia FROM sdx_excelencia_comercial.camp_incentivo__rede_vigente.int_metas__individuais;

    --camp_incentivo__rede_apurac
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.int_metas__individuais ADD COLUMN meta_cartao NUMBER(38,0);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.int_metas__individuais ADD COLUMN meta_individ_crt_consig_dia NUMBER(38,0);
SELECT meta_individ_crt_consig_dia FROM sdx_excelencia_comercial.camp_incentivo__rede_apurac.int_metas__individuais;



--mrt_apuracao__individual

    --camp_incentivo_dev
ALTER TABLE sdx_excelencia_comercial.camp_incentivo_dev.mrt_apuracao__individual ADD COLUMN producao_efetivada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo_dev.mrt_apuracao__individual ADD COLUMN producao_desconsiderada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo_dev.mrt_apuracao__individual ADD COLUMN producao_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo_dev.mrt_apuracao__individual ADD COLUMN meta_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo_dev.mrt_apuracao__individual ADD COLUMN rlz_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo_dev.mrt_apuracao__individual ADD COLUMN rlz_elegibilidade_app_mb NUMBER(10,2);
SELECT rlz_elegibilidade_app_mb FROM sdx_excelencia_comercial.camp_incentivo_dev.mrt_apuracao__individual;

    --camp_incentivo__rede_vigente
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.mrt_apuracao__individual ADD COLUMN producao_efetivada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.mrt_apuracao__individual ADD COLUMN producao_desconsiderada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.mrt_apuracao__individual ADD COLUMN producao_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.mrt_apuracao__individual ADD COLUMN meta_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.mrt_apuracao__individual ADD COLUMN rlz_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.mrt_apuracao__individual ADD COLUMN rlz_elegibilidade_app_mb NUMBER(10,2);
SELECT rlz_elegibilidade_app_mb FROM sdx_excelencia_comercial.camp_incentivo__rede_vigente.mrt_apuracao__individual;

    --camp_incentivo__rede_apurac
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.mrt_apuracao__individual ADD COLUMN producao_efetivada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.mrt_apuracao__individual ADD COLUMN producao_desconsiderada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.mrt_apuracao__individual ADD COLUMN producao_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.mrt_apuracao__individual ADD COLUMN meta_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.mrt_apuracao__individual ADD COLUMN rlz_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.mrt_apuracao__individual ADD COLUMN rlz_elegibilidade_app_mb NUMBER(10,2);
SELECT rlz_elegibilidade_app_mb FROM sdx_excelencia_comercial.camp_incentivo__rede_apurac.mrt_apuracao__individual;

    --camp_incentivo__rede_historico
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_historico.mrt_apuracao__individual ADD COLUMN producao_efetivada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_historico.mrt_apuracao__individual ADD COLUMN producao_desconsiderada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_historico.mrt_apuracao__individual ADD COLUMN producao_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_historico.mrt_apuracao__individual ADD COLUMN meta_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_historico.mrt_apuracao__individual ADD COLUMN rlz_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_historico.mrt_apuracao__individual ADD COLUMN rlz_elegibilidade_app_mb NUMBER(10,2);
SELECT rlz_elegibilidade_app_mb FROM sdx_excelencia_comercial.camp_incentivo__rede_historico.mrt_apuracao__individual;



--mrt_apuracao__agencia

    --camp_incentivo_dev
ALTER TABLE sdx_excelencia_comercial.camp_incentivo_dev.mrt_apuracao__agencia ADD COLUMN producao_efetivada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo_dev.mrt_apuracao__agencia ADD COLUMN producao_desconsiderada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo_dev.mrt_apuracao__agencia ADD COLUMN producao_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo_dev.mrt_apuracao__agencia ADD COLUMN meta_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo_dev.mrt_apuracao__agencia ADD COLUMN rlz_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo_dev.mrt_apuracao__agencia ADD COLUMN rlz_elegibilidade_app_mb NUMBER(10,2);
SELECT rlz_elegibilidade_app_mb FROM sdx_excelencia_comercial.camp_incentivo_dev.mrt_apuracao__agencia;

    --camp_incentivo__rede_vigente
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.mrt_apuracao__agencia ADD COLUMN producao_efetivada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.mrt_apuracao__agencia ADD COLUMN producao_desconsiderada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.mrt_apuracao__agencia ADD COLUMN producao_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.mrt_apuracao__agencia ADD COLUMN meta_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.mrt_apuracao__agencia ADD COLUMN rlz_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_vigente.mrt_apuracao__agencia ADD COLUMN rlz_elegibilidade_app_mb NUMBER(10,2);
SELECT rlz_elegibilidade_app_mb FROM sdx_excelencia_comercial.camp_incentivo__rede_vigente.mrt_apuracao__agencia;

    --camp_incentivo__rede_apurac
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.mrt_apuracao__agencia ADD COLUMN producao_efetivada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.mrt_apuracao__agencia ADD COLUMN producao_desconsiderada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.mrt_apuracao__agencia ADD COLUMN producao_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.mrt_apuracao__agencia ADD COLUMN meta_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.mrt_apuracao__agencia ADD COLUMN rlz_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_apurac.mrt_apuracao__agencia ADD COLUMN rlz_elegibilidade_app_mb NUMBER(10,2);
SELECT rlz_elegibilidade_app_mb FROM sdx_excelencia_comercial.camp_incentivo__rede_apurac.mrt_apuracao__agencia;

    --camp_incentivo__rede_historico
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_historico.mrt_apuracao__agencia ADD COLUMN producao_efetivada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_historico.mrt_apuracao__agencia ADD COLUMN producao_desconsiderada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_historico.mrt_apuracao__agencia ADD COLUMN producao_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_historico.mrt_apuracao__agencia ADD COLUMN meta_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_historico.mrt_apuracao__agencia ADD COLUMN rlz_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__rede_historico.mrt_apuracao__agencia ADD COLUMN rlz_elegibilidade_app_mb NUMBER(10,2);
SELECT rlz_elegibilidade_app_mb FROM sdx_excelencia_comercial.camp_incentivo__rede_historico.mrt_apuracao__agencia;



----------------------------------------BEM AQUI---------------------------------------------

--int_metas__individuais

    --camp_incentivo__bemaqui_vigente
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.int_metas__individuais ADD COLUMN meta_cartao NUMBER(38,0);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.int_metas__individuais ADD COLUMN meta_individ_crt_consig_dia NUMBER(38,0);
SELECT meta_individ_crt_consig_dia FROM sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.int_metas__individuais;

    --camp_incentivo__bemaqui_apurac
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.int_metas__individuais ADD COLUMN meta_cartao NUMBER(38,0);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.int_metas__individuais ADD COLUMN meta_individ_crt_consig_dia NUMBER(38,0);
SELECT meta_individ_crt_consig_dia FROM sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.int_metas__individuais;



--mrt_apuracao__individual

    --camp_incentivo__bemaqui_vigente
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.mrt_apuracao__individual ADD COLUMN producao_efetivada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.mrt_apuracao__individual ADD COLUMN producao_desconsiderada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.mrt_apuracao__individual ADD COLUMN producao_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.mrt_apuracao__individual ADD COLUMN meta_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.mrt_apuracao__individual ADD COLUMN rlz_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.mrt_apuracao__individual ADD COLUMN rlz_elegibilidade_app_mb NUMBER(10,2);
SELECT rlz_elegibilidade_app_mb FROM sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.mrt_apuracao__individual;

    --camp_incentivo__bemaqui_apurac
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.mrt_apuracao__individual ADD COLUMN producao_efetivada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.mrt_apuracao__individual ADD COLUMN producao_desconsiderada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.mrt_apuracao__individual ADD COLUMN producao_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.mrt_apuracao__individual ADD COLUMN meta_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.mrt_apuracao__individual ADD COLUMN rlz_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.mrt_apuracao__individual ADD COLUMN rlz_elegibilidade_app_mb NUMBER(10,2);
SELECT rlz_elegibilidade_app_mb FROM sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.mrt_apuracao__individual;

    --camp_incentivo__bemaqui_historico
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_historico.hst_apuracao__individual ADD COLUMN producao_efetivada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_historico.hst_apuracao__individual ADD COLUMN producao_desconsiderada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_historico.hst_apuracao__individual ADD COLUMN producao_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_historico.hst_apuracao__individual ADD COLUMN meta_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_historico.hst_apuracao__individual ADD COLUMN rlz_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_historico.hst_apuracao__individual ADD COLUMN rlz_elegibilidade_app_mb NUMBER(10,2);
SELECT rlz_elegibilidade_app_mb FROM sdx_excelencia_comercial.camp_incentivo__bemaqui_historico.hst_apuracao__individual;



--mrt_apuracao__agencia

    --camp_incentivo__bemaqui_vigente
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.mrt_apuracao__agencia ADD COLUMN producao_efetivada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.mrt_apuracao__agencia ADD COLUMN producao_desconsiderada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.mrt_apuracao__agencia ADD COLUMN producao_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.mrt_apuracao__agencia ADD COLUMN meta_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.mrt_apuracao__agencia ADD COLUMN rlz_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.mrt_apuracao__agencia ADD COLUMN rlz_elegibilidade_app_mb NUMBER(10,2);
SELECT rlz_elegibilidade_app_mb FROM sdx_excelencia_comercial.camp_incentivo__bemaqui_vigente.mrt_apuracao__agencia;

    --camp_incentivo__bemaqui_apurac
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.mrt_apuracao__agencia ADD COLUMN producao_efetivada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.mrt_apuracao__agencia ADD COLUMN producao_desconsiderada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.mrt_apuracao__agencia ADD COLUMN producao_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.mrt_apuracao__agencia ADD COLUMN meta_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.mrt_apuracao__agencia ADD COLUMN rlz_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.mrt_apuracao__agencia ADD COLUMN rlz_elegibilidade_app_mb NUMBER(10,2);
SELECT rlz_elegibilidade_app_mb FROM sdx_excelencia_comercial.camp_incentivo__bemaqui_apurac.mrt_apuracao__agencia;

    --camp_incentivo__bemaqui_historico
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_historico.hst_apuracao__agencia ADD COLUMN producao_efetivada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_historico.hst_apuracao__agencia ADD COLUMN producao_desconsiderada_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_historico.hst_apuracao__agencia ADD COLUMN producao_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_historico.hst_apuracao__agencia ADD COLUMN meta_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_historico.hst_apuracao__agencia ADD COLUMN rlz_crt_consignado NUMBER(10,2);
ALTER TABLE sdx_excelencia_comercial.camp_incentivo__bemaqui_historico.hst_apuracao__agencia ADD COLUMN rlz_elegibilidade_app_mb NUMBER(10,2);
SELECT rlz_elegibilidade_app_mb FROM sdx_excelencia_comercial.camp_incentivo__bemaqui_historico.hst_apuracao__agencia;






