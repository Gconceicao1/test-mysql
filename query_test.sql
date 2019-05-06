/*TESTE QUERY*/
SELECT cliente.id_cliente AS IdCliente 
		,cliente.nome AS Nome 
       ,cliente.sobrenome AS Sobrenome 
       ,casa.cor AS Casa
       ,bairro.nome AS Bairro
       ,carro.modelo AS Carro 
FROM cliente 
LEFT JOIN casa ON  casa.fk_cliente = cliente.id_cliente
LEFT JOIN bairro ON bairro.id_bairro = casa.fk_bairro 
LEFT JOIN carro ON carro.fk_cliente = cliente.id_cliente 
ORDER BY Nome ASC