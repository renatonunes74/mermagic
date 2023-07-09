<div align="center">
	
![GitHub top language"](https://img.shields.io/github/languages/top/renatonunes74/mermagic.svg?style=for-the-badge)
![Repository size"](https://img.shields.io/github/repo-size/renatonunes74/mermagic.svg?style=for-the-badge)
![GitHub last commit"](https://img.shields.io/github/last-commit/renatonunes74/mermagic.svg?style=for-the-badge)
![Repository issues"](https://img.shields.io/github/issues/rockofox/firefox-minima.svg?style=for-the-badge)
![GitHub](https://img.shields.io/github/license/renatonunes74/mermagic?style=for-the-badge)
# Mermagic
**Criador de Diagrama de Classes para Java<br>Esta em desenvolvimento!**

[Porque usar](#porque-usar) -
[Como usar](#como-usar) -
[Quando usar](#quando-usar) -
[Aonde usar](#aonde-usar) -
[Testado](#testado)

</div>

## Pré-visualização
![](preview.gif)

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
1. Agora é só colar a saída num arquivo mermaid!

### Dependências necessárias
- Pacotes Linux básicos, como: cat, grep, find, sed...
- [Javap](https://docs.oracle.com/javase/8/docs/technotes/tools/windows/javap.html) (Para encontrar as classes e métodos)
- [xclip](https://github.com/astrand/xclip) (Para copiar a saída gerada)


### Funcionalidades
- Por enquanto apenas gera a saída para mermaid.

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
