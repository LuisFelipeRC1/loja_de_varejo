# 📊 Projeto de Análise de Dados - Loja de Varejo com MySQL + Power BI

Este projeto simula uma análise de vendas de uma **loja de varejo**, utilizando banco de dados relacional MySQL e conectando os dados ao **Power BI** para criação de dashboards dinâmicos.

Luis Felipe
Estudante de Dados | Projeto de Estudo
📅 Julho/2025

---

## 🧰 Tecnologias Utilizadas

- **MySQL Server 9.x**
- **MySQL Workbench / VSCode com MySQL Shell**
- **Power BI Desktop**
- **DAX (Data Analysis Expressions)**

---

## 💾 Estrutura do Banco de Dados

O banco contém 3 tabelas:

- `clientes` → informações básicas (nome, idade, CPF, cidade)
- `produtos` → nome, categoria e preço
- `vendas` → dados de venda, cliente, produto, data e quantidade

### Modelo Relacional:

- `vendas.id_cliente` → 🔗 `clientes.id_cliente`
- `vendas.id_produto` → 🔗 `produtos.id_produto`

---

## 📥 Scripts SQL

```sql
CREATE DATABASE loja_de_varejo;
USE loja_de_varejo;

CREATE TABLE clientes (...);
CREATE TABLE produtos (...);
CREATE TABLE vendas (...);

)

