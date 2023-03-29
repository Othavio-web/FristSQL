SELECT DISTINCT COD_DEP FROM EMPREGADO;
SELECT * FROM EMPREGADO;
SELECT * FROM EMPREGADO ORDER BY NOME, SOBRENOME;
SELECT NOME, SALARIO FROM EMPREGADO WHERE COD_DEP!=100;
SELECT NOME, SALARIO FROM EMPREGADO WHERE COD_DEP IS NULL;
SELECT NOME, SALARIO FROM EMPREGADO WHERE SALARIO <=10500;
SELECT * FROM EMPREGADO WHERE COD_DEP=100 AND SALARIO>8000 AND COD_GERENTE = 108;
SELECT * FROM EMPREGADO WHERE COD_DEP=108 OR COD_GERENTE = 103;
SELECT * FROM EMPREGADO WHERE COD_GERENTE IN (108,103);
SELECT * FROM EMPREGADO WHERE NOME LIKE '%tt%';
SELECT * FROM EMPREGADO WHERE EMAIL LIKE '%BRAU';
SELECT * FROM EMPREGADO WHERE SOBRENOME LIKE '_ %';
SELECT * FROM EMPREGADO WHERE NOME LIKE'%r';
SELECT NOME FROM EMPREGADO WHERE (SALARIO>=3100 AND COD_DEP = 50) OR NOME = 'OLIVER';
SELECT NOME, LOWER(NOME), UPPER(NOME) FROM EMPREGADO WHERE SALARIO>3100;
SELECT NOME||' '||SOBRENOME FROM EMPREGADO WHERE SALARIO>3100;
SELECT NOME, SUBSTR(NOME, 1,3) FROM EMPREGADO;
SELECT * FROM EMPREGADO WHERE LENGTH (NOME)=3;
select nome, data_contratacao from empregado;
select current_timestamp from dual;
select to_char(sysdate, 'dd/mm/yyyy hh24:mi:ss'), to_char(sysdate+1/24, 'dd/mm/yyyy hh24:mi:ss'), to_char(sysdate+1/24/60, 'dd/mm/yyyy hh24:mi:ss') from dual;
select sysdate, (sysdate+2), 
add_months(sysdate, 1) from dual;
select nome, 
    case 
    when salario <2000 and PCT_COMISSAO is not null then 'baixo'
    when salario >5000 then 'alto'
    else 'médio'
    end as salario
from empregado;
select nome, sobrenome from empregado where upper(nome) like '%TT%'; 
select*from (select upper(nome) as nome, sobrenome from empregado)where nome like '%tt%';
select ROUND(15.193,1), round(3.464,2) from dual;
select cod_dep, cod_gerente, round(avg(salario)) as "média dos salarios", count(1) as qtd, min(salario), max(salario), sum(salario) from empregado group by cod_dep, cod_gerente;
select cod_dep, count(*) as total from empregado group by cod_dep having count(*)>20;
select nome, pct_comissao as "comissao" from empregado;
select * from regiao;
select nome_pais from pais;
select cidade from local;
select nome_servico,(salario_min - salario_max) as "Dif" from servico order by 2 desc;
select distinct COD_LOCAL from DEPARTAMENTO;
select distinct cod_gerente from EMPREGADO order by COD_GERENTE desc;
select nome, sobrenome, cod_dep from empregado order by 3 desc, 1, 2;
select cod_emp, data_inicio from HISTORIA_EMPREGADO where cod_servico in('IT_PROG', 'SA_MAN');
select nome_servico from servico where salario_min<4500 or salario_max>12000;
select cod_local from local where cep is null;
select cidade from local where cidade like 'S%';
select cidade from local where cidade >='S%';
select to_char(to_date('20110123 13:24:14', 'yyyymmdd hh24:mi:ss'),'dd/mm/yyyy hh24-mi-ss') from dual;
select last_day(sysdate)from dual;
select next_day(sysdate, 7) from dual;
select to_char((sysdate+3), 'DD/MM/YYYY') from dual;
select to_date('15/09/2015','dd/mm/yyyy')-to_date('01/02/2015','dd/mm/yyyy') from dual;
