-- Faça um relatório que lista todas as pessoas funcionárias que possuem o mesmo cargo. Ou seja, suponha que houvesse somente três pessoas funcionárias, João, Maria e Alex, e:

-- João e Maria possuem o mesmo cargo;

-- Alex não tem outra pessoa funcionária com o mesmo cargo.

-- Logo, podemos dizer que João tem uma pessoa funcionária associada, Maria, que possui o mesmo cargo. Também podemos dizer que Maria tem uma pessoa funcionária associada, João, que possui o mesmo cargo. Já Alex não tem outra pessoa funcionária associada com o mesmo cargo. Portanto, seu relatório deveria ter dois resultados, um indicando que Maria tem uma pessoa associada João que possui o mesmo cargo, e o outro resultado indicando que João tem uma pessoa associada Maria que possui o mesmo cargo.

-- Com base nisso, usando o banco hr como referência, monte uma query que exiba seis colunas:

-- A primeira coluna deve possuir o alias "Nome completo funcionário 1" e exibir o nome completo da pessoa funcionária (não se esqueça do espaço entre o nome e o sobrenome).

-- A segunda coluna deve possuir o alias "Salário funcionário 1" e exibir o salário dessa pessoa.

-- A terceira coluna deve possuir o alias "Telefone funcionário 1" e exibir o número de telefone dessa pessoa.

-- A quarta coluna deve possuir o alias "Nome completo funcionário 2" e exibir o nome completo da pessoa funcionária associada que possui o mesmo cargo (não se esqueça do espaço entre o nome e o sobrenome).

-- A quinta coluna deve possuir o alias "Salário funcionário 2" e exibir o salário da pessoa funcionária associada que possui o mesmo cargo.

-- A sexta coluna deve possuir o alias "Telefone funcionário 2" e exibir o número da pessoa funcionária associada que possui o mesmo cargo.

-- Os resultados devem estar ordenados pela coluna "Nome completo funcionário 1" em ordem alfabética. Em caso de empate, os resultados devem ser ordenados pela coluna Nome completo funcionário 2" em ordem alfabética.

SELECT CONCAT(Beavis.FIRST_NAME, ' ', Beavis.LAST_NAME) AS `Nome completo funcionário 1`,
Beavis.SALARY AS 'Salário funcionário 1',
Beavis.PHONE_NUMBER AS 'Telefone funcionário 1',

CONCAT(Butthead.FIRST_NAME, ' ', Butthead.LAST_NAME) AS `Nome completo funcionário 2`,
Butthead.SALARY AS 'Salário funcionário 2',
Butthead.PHONE_NUMBER AS 'Telefone funcionário 2'

FROM hr.employees as Beavis, hr.employees as Butthead
WHERE Beavis.JOB_ID = Butthead.JOB_ID AND Beavis.EMPLOYEE_ID <> Butthead.EMPLOYEE_ID

ORDER BY `Nome completo funcionário 1`, `Nome completo funcionário 2`;
