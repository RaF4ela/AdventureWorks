# Adventure Works - Data Analytics Project

Este projeto tem como objetivo construir uma solução de analytics ponta a ponta utilizando a base Adventure Works, aplicando boas práticas de Engenharia de Dados com dbt e Databricks.

O foco é transformar dados transacionais (OLTP) em um modelo analítico estruturado (OLAP), permitindo análises eficientes de vendas, clientes e produtos.

---

## 🧱 Arquitetura do Projeto

O projeto foi desenvolvido seguindo a arquitetura em camadas do dbt:

### 🔹 Staging
- Limpeza e padronização dos dados brutos
- Seleção de colunas relevantes
- Renomeação e tratamento de tipos de dados

### 🔹 Intermediate
- Aplicação de regras de negócio
- Junções entre tabelas
- Preparação dos dados para o modelo final

### 🔹 Marts
- Construção do modelo dimensional
- Criação de tabelas fato e dimensões

**Tabelas principais:**
- `fact_sales`
- `dim_customers`
- `dim_products`
- `dim_dates`
- `dim_locations`
- `dim_sales_reasons`

---

## 🧪 Qualidade dos Dados

Foram implementados testes utilizando dbt para garantir:

- Integridade de chaves primárias
- Relacionamentos entre tabelas
- Consistência dos dados

---

## 🗄️ Tecnologias Utilizadas

- **Databricks** → Data Warehouse / Lakehouse
- **dbt** → Transformação e modelagem de dados
- **GitHub** → Versionamento
- **Power BI** → Visualização de dados

---

## 📊 Camada Analítica

Os dados finais foram modelados em formato estrela (Star Schema), permitindo análises como:

- Performance de vendas
- Análise por produto
- Comportamento de clientes
- Motivos de venda

---

## ⚠️ Observação

Os dados brutos não estão incluídos neste repositório, pois foram carregados diretamente no Databricks, seguindo boas práticas de engenharia de dados.

---

## 📌 Estrutura do Projeto
models/
├── staging/
├── intermediate/
└── marts/
macros/
tests/
seeds/
snapshots/

---

## 🚀 Resultado

Este projeto demonstra a construção de um pipeline completo de dados, desde a ingestão até a camada analítica, utilizando boas práticas de mercado.