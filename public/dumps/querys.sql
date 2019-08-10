-- Listar exercícios de um usuário em determinada cota
select exercicio_id, exercicios.descricao,  exercicios.imagem from lista_exercicios  
inner join exercicios on exercicios.id = lista_exercicios.exercicio_id  
inner join treinos on treinos.id = lista_exercicios.treino_id  
inner join treino_atletas on treino_atletas.treino_id = treinos.id  
inner join cotas on cotas.id = treino_atletas.cota_id  
inner join users on users.id = cotas.user_id 
where users.id = '' 
and cotas.id = ''

-- listar exercicios por grupo de exercicios
select exercicios.descricao from exercicios 
inner join grupo_exercicios on grupo_exercicios.id = exercicios.grupo_exercicio_id 
where grupo_exercicios.descricao = 'perna';

--listar dados de avaliacao fisica por usuario
select anamnese_b_3, resposta_anamnese_b_3 from avaliacao_fisicas 
inner join cotas on cotas.id = avaliacao_fisicas.cota_id 
inner join users on users.id = cotas.user_id 
where users.name = 'Edna';

--listar enderecos de academias
select academias.nome, enderecos.rua, cidades.nome, numero, bairro, ufs.descricao from academias 
inner join enderecos on enderecos.academia_id = academias.id 
inner join cidades on cidades.id = enderecos.cidade_id 
inner join ufs on ufs.id = cidades.uf_id 
where cidades.nome = 'Aracuai';

/*
$user->academias()->create([
        'cnpj'=>'22002200222',
        'nome'=>'Academia de Policia',
]);

return $user->academias()->count();

*/