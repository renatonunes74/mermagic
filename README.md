<div align="center">
	
![GitHub top language"](https://img.shields.io/github/languages/top/renatonunes74/mermagic.svg?style=for-the-badge)
![Repository size"](https://img.shields.io/github/repo-size/renatonunes74/mermagic.svg?style=for-the-badge)
![GitHub last commit"](https://img.shields.io/github/last-commit/renatonunes74/mermagic.svg?style=for-the-badge)
![Repository issues"](https://img.shields.io/github/issues/rockofox/firefox-minima.svg?style=for-the-badge)
![GitHub](https://img.shields.io/github/license/renatonunes74/mermagic?style=for-the-badge)
# Mermagic
**Criador de Diagrama de Classes [Mermaid](https://mermaid.js.org) para Java<br>Esta em desenvolvimento!**

[Porque usar](#porque-usar) -
[Como usar](#como-usar) -
[Quando usar](#quando-usar) -
[Aonde usar](#aonde-usar) -
[Testado](#testado)

</div>

## Pré-visualização
![](preview.gif)

### Resultado
```mermaid
classDiagram
class DemoApplicationTests {
  void contextLoads();
}
class ProductController {
  -com.foodminder.FoodMinder.domain.product.ProductRepository repository;
  +com.foodminder.FoodMinder.controllers.ProductController();
  +getAllProducts();
  +registerProduct(com.foodminder.FoodMinder.domain.product.RequestProduct);
  +updateProduct(com.foodminder.FoodMinder.domain.product.RequestProduct);
  +deleteProduct(String);
}
class DemoApplication {
  +com.foodminder.FoodMinder.DemoApplication();
  +static void main(String[]);
}
class Product {
  -String id;
  -String name;
  -Integer price_in_cents;
  -Boolean active;
  +com.foodminder.FoodMinder.domain.product.Product(com.foodminder.FoodMinder.domain.product.RequestProduct);
  +String getId();
  +String getName();
  +Integer getPrice_in_cents();
  +Boolean getActive();
  +void setId(String);
  +void setName(String);
  +void setPrice_in_cents(Integer);
  +void setActive(Boolean);
  +com.foodminder.FoodMinder.domain.product.Product(String, String, Integer, Boolean);
  +com.foodminder.FoodMinder.domain.product.Product();
  +boolean equals(Object);
  #boolean canEqual(Object);
  +int hashCode();
}
class RequestProduct {
  -final String id;
  -final String name;
  -final Integer price_in_cents;
  +com.foodminder.FoodMinder.domain.product.RequestProduct(String, String, Integer);
  +final String toString();
  +final int hashCode();
  +final boolean equals(Object);
  +String id();
  +String name();
  +Integer price_in_cents();
}
class ProductRepository {
<<interface>>
}
ProductRepository ..|> Product : Realization
```

## Porque usar
- Para fins de documentação do projeto, além de outros beneficios de um diagrama de classes.

## Como usar
1. Clone o repositório
    - `git clone https://github.com/renatonunes74/mermagic`
1. Entre na pasta
    - `cd mermagic`
1. Execute 
    - CLI / via Terminal:
        - `chmod +x mermagic.sh` (Para deixar executável)
        - `./mermagic.sh diretório/do/projeto/java`
1. Agora é só colar a saída num arquivo [Mermaid](https://mermaid.js.org)!

### Dependências necessárias
- Pacotes Linux básicos, como: cat, grep, find, sed...
- [Javap](https://docs.oracle.com/javase/8/docs/technotes/tools/windows/javap.html) (Para encontrar as classes e métodos)
- [xclip](https://github.com/astrand/xclip) (Para copiar a saída gerada)


### Funcionalidades
- Por enquanto apenas gera a saída formatado para [Mermaid](https://mermaid.js.org) em [Markdown](https://daringfireball.net/projects/markdown/).

### Tecnologias usadas
- Complementares:
     - [VHS](https://github.com/charmbracelet/vhs) (Criação de GIF do terminal via código)

## Quando usar
- Quando necessitar documentar, verificar ou até mesmo demonstrar o relacionamento das classes.

## Aonde usar
- Via terminal que suporte SHELL Script e as ferramentas ([Dependências necessárias](#dependências-necessárias))

## Testado
- [openjdk 19.0.2](https://openjdk.org/)
- [Spring Boot 3.1.1](https://spring.io/projects/spring-boot)

## Contribuição
Estou aberto a contribuições, feedback e opiniões da comunidade! Se você tiver alguma ideia para melhorar o projeto, correções de bugs ou sugestões de novos recursos, ficarei feliz em receber sua contribuição! Basta enviar um Pull Request no repositório do projeto.
