# Orchard
## Objetivo:
 - Desenvolver uma aplicação para gerenciar o pomar de um produtor de frutas.

## Definição:
 - O pomar precisa catalogar suas plantas, organizando-as em grupos e espécies e manter um histórico da colheita. Sendo assim a aplicação tem os seguintes requisitos:
  - Gerenciar árvores
    - CRUD
  - Gerenciar Espécies de árvores
    - CRUD
  - Gerenciar Grupos de árvores.
    - CRUD
  - Gerenciar a colheita realizada que poderá ser por Árvore ou Grupo de Árvore.
    - CRUD
  - Disponibilizar um relatório ou tela de visualização das colheitas incluindo filtros de árvore, grupo de árvore, espécie e período.
    - R

## Especificações técnicas:
 - Definição básica de modelos
  - Espécies: Código e Descrição.
  - Grupos de Árvores: Código, Nome, Descrição.
  - Árvores: Código, Descrição, Idade e Espécie, Grupo de Árvore.
  - Colheita: Informações, Data de Colheita, Peso Bruto e Árvore.

## Objetivo do desafio:
 - Aplicar conceitos de SOLID
 - Dependency Injection
   - IoC (Inversion of Control)
   - DIP (Dependency Inversion Principle)
 - Aplicar conceitos de Clean Code
 - Aplicar uma arquitetura limpa, que permita o desacoplamento
 - Aplicar teste:
   - Unidade
   - Integração
   - Widgets
 - Usar Dependency Injection