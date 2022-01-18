# Tokenlab mobile movies

## O projeto consiste em uma aplicação mobile simples feita em flutter que lista filmes com notas altas no IMDB.

### Pré-requisitos

É necessário ter instalado as seguintes ferramentas:
* [flutterSDK](https://docs.flutter.dev/get-started/install)
* Emulador mobile ou um dispositivo móvel que suporte a aplicação.


### Rodando a aplicação
Dentro de um terminal bash, na pasta raiz onde o repositório foi clonado utilize o seguinte comando para executar a aplicação:

```bash
# Roda a aplicação no dispositivo padrão. 
flutter run
```

### Estrutura da aplicação

Dentro da pasta lib temos o core da aplicação, ela é dividida em três principais subpastas:
* modules: onde ficam os arquivos que representam os objetos da aplicação, no caso os filmes; 
* pages: onde ficam os arquivos que são responsaveis por cada uma das páginas; 
* widgets: onde ficam alguns componentes que podem ser usados na aplicação.

Cada uma das páginas possui três arquivos que são responsaveis pelo funcionamento da aplicação naquela página, os três arquivos são:
* cubit: responsável pelas regras da página
* state: responsável por definir os estados possíveis da aplicação naquela página
* page: responsável por receber todas as informações e mostrar para o usuário

### Bibliotecas utilizadas

Dentro do projeto são utilizadas as seguintes bibliotecas:
* http: utilizado para fazer requisições http;
* flutter_bloc: utilizado para gerenciar os estados da aplicação;
* equatable: utilizado para fazer comparações de objetos.