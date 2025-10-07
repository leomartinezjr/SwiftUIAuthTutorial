# SecureAuth Swift – Sistema de Autenticação Completo com Firebase e SwiftUI

---

## 🚀 Visão Geral do Projeto

SecureAuth Swift é um sistema de autenticação robusto e moderno, desenvolvido integralmente com SwiftUI e integrado ao Firebase para gerenciar usuários de forma segura e eficiente. Este projeto demonstra as melhores práticas de desenvolvimento iOS, utilizando recursos avançados do Swift 5.5+ como `async/await` para operações assíncronas e `@EnvironmentObject` para um gerenciamento de estado coeso e escalável.

O objetivo principal é fornecer uma base sólida para qualquer aplicação que necessite de autenticação de usuários, englobando funcionalidades de registro, login, logout e gerenciamento de perfil, tudo isso com uma interface de usuário intuitiva e responsiva.

## ✨ Funcionalidades Principais

* **Registro de Usuários:** Processo de cadastro seguro com validação de e-mail, senha e nome completo.
* **Login de Usuários:** Autenticação de usuários existentes com credenciais seguras.
* **Logout:** Funcionalidade para desconexão do usuário, limpando a sessão.
* **Gerenciamento de Perfil:** Exibição dos dados do usuário logado (nome, e-mail e iniciais).
* **Integração Firebase:** Utilização do Firebase Authentication para autenticação e Firestore para persistência de dados do usuário.
* **Validação de Formulários:** Validação em tempo real para garantir a integridade dos dados de entrada.

## 🛠️ Tecnologias Utilizadas

Este projeto foi construído com as seguintes tecnologias e conceitos modernos:

* **SwiftUI:** Framework declarativo para construção de interfaces de usuário em todas as plataformas Apple.
* **Firebase Authentication:** Serviço de backend para autenticação de usuários via e-mail e senha.
* **Firebase Firestore:** Banco de dados NoSQL baseado em nuvem para armazenamento de dados de usuários.
* **Swift Concurrency (`async/await`):** Gerenciamento de operações assíncronas de forma eficiente e legível, evitando "callback hell".
* **`@EnvironmentObject`:** Gerenciamento de estado compartilhado em toda a hierarquia de visualizações, promovendo um código limpo e desacoplado.
* **MVVM (Model-View-ViewModel):** Arquitetura para separar a lógica de negócios da interface do usuário, facilitando a manutenção e testes.
* **`@Published`:** Propriedade wrapper do Combine para notificar as views sobre mudanças de estado.
* **`Identifiable` e `Codable`:** Protocolos utilizados para modelagem de dados de usuário, facilitando a integração com Firestore.

## 🎯 Por Que Este Projeto é Digno de Destaque?

Este projeto demonstra uma compreensão aprofundada das tecnologias mais recentes do ecossistema Apple e da engenharia de software moderna:

* **Desenvolvimento Orientado a Assincronismo:** A utilização de `async/await` mostra uma aderência às práticas recomendadas para concorrência em Swift, resultando em um código mais robusto e menos propenso a erros.
* **Arquitetura Escalável e Manutenível:** A aplicação da arquitetura MVVM, combinada com `@EnvironmentObject`, garante que o código seja fácil de entender, testar e estender para futuras funcionalidades.
* **Integração Backend Profissional:** A configuração e utilização completa do Firebase Authentication e Firestore demonstram a capacidade de integrar soluções de backend robustas em aplicações iOS.
* **Experiência do Usuário Refinada:** A UI/UX é clara e funcional, oferecendo uma experiência de autenticação fluida e intuitiva.

## 💻 Instalação e Execução

Para rodar este projeto localmente, siga os passos abaixo:

1.  **Clone o repositório:**
    ```bash
    git clone [https://github.com/seu-usuario/SecureAuth-Swift.git](https://github.com/seu-usuario/SecureAuth-Swift.git)
    cd SecureAuth-Swift
    ```
2.  **Configuração do Firebase:**
    * Crie um novo projeto no [Console do Firebase](https://console.firebase.google.com/).
    * Adicione um aplicativo iOS ao seu projeto Firebase.
    * Siga as instruções para baixar o arquivo `GoogleService-Info.plist` e adicione-o à raiz do seu projeto Xcode.
    * Habilite a autenticação por "E-mail/Senha" no Firebase Authentication.
    * Configure as regras do Firestore para permitir leitura e escrita (apenas para desenvolvimento, em produção, ajuste as regras de segurança).
3.  **Instale as dependências (se estiver usando CocoaPods/Swift Package Manager):**
    (Assumindo que você já adicionou as dependências Firebase ao seu projeto, se não, adicione `Firebase/Auth` e `Firebase/Firestore`).
    
    *Se usando Swift Package Manager, certifique-se de que os pacotes Firebase estão adicionados ao seu projeto Xcode.*
4.  **Abra o projeto no Xcode:**
    ```bash
    open SecureAuth-Swift.xcodeproj
    ```
5.  **Compile e execute:**
    Selecione um simulador ou dispositivo e clique em "Run".

## 📸 Screenshots

Aqui estão algumas telas do aplicativo em funcionamento:

### Tela de Login
http://googleusercontent.com/image_generation_content/0
