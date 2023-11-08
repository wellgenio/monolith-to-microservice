# Monolítico para Microsserviços

Considero que iniciar um projeto com microsserviços é uma perda de tempo e uma violação do `YAGNI`. Isso não quer dizer apenas construir um grande Monolítico! Comece com um "monolítico" para contruir seu produto, iterando e evoluindo ouvindo feedback. Eventualmente, você começará a "ver" os serviços que deseja dividir, com base na experiência real do sistema, em vez de o arquiteto tentar advinhá-lo.

Nesse projeto, esperamos conseguir evoluir com sucesso em direção a um sistema distribuido a partir de um monolítico, desde que mantenhamos um nível descente de refatoração.

# Para rodar o projeto

Supondo que você tenha o `docker-compose` instalado

`docker-compose up -d`

# Ideias gerais

- Para manter a execução consistente, use `docker-compose`. Isso tornará as coisas mais suaves à medida que vamos evoluindo o projeto.
- Use gRPC para dividir as coisas.
- Manteremos como um aplicativo de linha de comando apenas para minimizar as coisas.


# O Problema

    Queremos saber o que fazer para o jantar!

Haverá algum tipo de ideia de quais igredientes estão na casa e quais são seus prazos de validade. Teremos também um livro de receitas para derivar as refeições.

## Decompondo o problema

1. **Hello, world** Aplicativo de linha de comando executado através do `docker-compose`` que imprime "olá, mundo".

2. **Igredientes codificados para usar** Imprimir uma lista de igredientes disponíveis para ordenados pela data de validade.

3. **Gerenciar ingredientes (add, remove, etc.)**

4. **Encontre refeições** Uma lista de receitas com base nos ingredientes disponíveis.

5. **Gerenciar receitas (add, remove, etc.)**

## Diary

    Querido diário...

### Step 1

Conforme documentado, o objetivo desta iteração é configurar um projeto simples de "Olá Mundo". Você pode verificar isso usando `curl http://localhost:8080/`

Uma duvida que você talvez tenha seria: "por que usar `docker-compose` para rodar um 'hello world'?" Primeiro por que é um jeito simples de executar o código e posteriormente se desejamos adicionar outras dependências, como banco de dados, já estaremos preparados para isso.

