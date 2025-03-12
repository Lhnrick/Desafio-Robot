# Desafio de Automação de Testes com Robot Framework

Este projeto é focado na automação de testes para o cadastro de perfis, utilizando o framework Robot Framework.

## Estrutura do Projeto

- **resources/**: Contém os arquivos de recursos, como variáveis e palavras-chave.
  - `cadastro_perfil/`: Diretório para recursos de automação relacionados ao cadastro de perfis.
  - `keywords.robot`: Palavras-chave reutilizáveis para os testes.
  - `variables.robot`: Variáveis específicas para os testes.
  - `global_variables.robot`: Variáveis globais utilizadas em todo o projeto.

- **tests/**: Contém os scripts de teste.
  - `cadastro_perfil.robot`: Testes relacionados ao cadastro de perfis.
  - `campos_inválidos.robot`: Testes para validação de campos inválidos no cadastro.

- **log.html**: Log gerado após a execução dos testes.
- **output.xml**: Saída em formato XML gerada pelos testes.
- **report.html**: Relatório detalhado dos testes executados.

As bibliotecas necessárias são:

- `robotframework`
- `robotframework-browser`
- `robotframework-SeleniumLibrary`
- `robotframework-Collections`
- `selenium`
- `webdriver-manager`

## Como Executar os Testes

1. Certifique-se de ter o Robot Framework instalado.
2. Navegue até o diretório do projeto.
3. Execute o seguinte comando para rodar todos os testes:

   ```bash
   robot tests/

4. Executar testes específicos por TAGS

   ```bash
   robot -i campos_invalidos tests

DESAFIO/
├─ Imagens  #Imagens utilizadas no projeto
├─ resources/  # Recursos para automação
│  ├─ cadastro_perfil/  # recursos específicos para cadastro de perfis
│     ├─ keywords.robot  # Palavras-chave reutilizáveis para os testes
│     ├─ variables.robot  # Variáveis específicas para os testes
│  └─ global_variables.robot  # Variáveis globais utilizadas em todo o projeto
├─ test/  # Testes automatizados
│  ├─ cadastro_perfil.robot  # Testes relacionados ao cadastro de perfis
│  └─ campos_inválidos.robot  # Testes para validação de campos inválidos no cadastro
├─ log.html  # Log gerado após a execução dos testes
├─ output.xml  # Saída em formato XML gerada pelos testes
├─ report.html  # Relatório detalhado dos testes executados
└─ README.md  # Documentação do projeto