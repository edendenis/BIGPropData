#!/usr/bin/env python
# coding: utf-8

# # Radial Basis Function Neural Networks (RBFNN)
# 
# [![DOI](https://zenodo.org/badge/758747133.svg)](https://zenodo.org/doi/10.5281/zenodo.10672752)
# 

# ## Resumo
# 
# Aplicação computacional de Redes Neurais de Função de Base Radial (RBFNN) eu empregam funções de base radial em camadas ocultas, modelando com eficiência relacionamentos não lineares complexos em dados. Sua arquitetura exclusiva permite aproximação, classificação e regressão precisas de funções, tornando-os versáteis e eficazes em vários domínios.
# 
# ## _Abstract_
# 
# _Computational Application of Radial Basis Function Neural Networks (RBFNN) I employ radial basis functions in hidden layers, efficiently modeling complex nonlinear relationships in data. Their unique architecture enables accurate function approximation, classification, and regression, making them versatile and effective across multiple domains._

# ## Revisão(ões)/Versão(ões)
# 
# | Revisão número | Data da revisão | Descrição da revisão                                    | Autor da revisão                                |
# |:--------------:|:---------------:|:--------------------------------------------------------|:------------------------------------------------|
# | 0              | 15/09/2022      | <ul><li>Revisão inicial/criação do documento.</li></ul> | <ul><li>Eden Denis F. da S. L. Santos</li></ul> |
# 

# ## 1. Como executar a aplicação
# 
# 1. Abrir o arquivo `main_<nome_da_aplicacao>.ipynb` o qual está com comentários, alterar o banco de dados (existem exemplos de bancos de dados) na pasta que deverá ser utilizado para a execução e executar todas as células. 
#     
#     Perceber que o <nome_da_aplicacao> trata-se, redudantemente, do nome da aplicação. Coloquei desta forma, pois quis, por ora, generalizar o arquivo `README.md` para poder criar o repositório de cada uma das aplicações que desenvolvi ao longo da minha carreira.

# ## Referências
# 
# [1]	BROOMHEAD, D.; LOWE, D. Lowe. ***Multivariable functional interpolation and adaptive networks: complex systems***. .2, P. 321, 1988.  
# 
# [2] HEBB, D. O.. ***Brain mechanisms and learning***. London: J. F. Delafresnaye, 1961.
# 
# [3] MÁSSON, E.; WANG, Y.. ***Introduction to computation and learning in artificial neural networks***. European Journal of Operational Research, North-Holland, v. 47, 1990.
# 
# [4] HAYKIN, S.. ***Redes neurais: princípios e prática***. Tradução de Paulo Martins Engel. 2. ed. Porto Alegre: Bookman, 2001.
# 
# [5] BARONE, D. A. C.. ***Sociedades artificiais: a nova fronteira da inteligência nas máquinas***. Porto Alegre: Bookman, 2003.
# 
# [6] RICIERI, A. P.; SANTOS, E. D. F. da S. L.. ***Radial basis function***. Prandiano e EDF Tecnologia, São Paulo, 2013.
# 
# [7] SANTOS, E. D. F. da S. L.. ***Curso de python: radial basis function***. Prandiano e EDF Tecnologia, São Paulo, 2013.
# 
# [8] Universidade de São Paulo, Insituto de Ciências Matemáticas e de Computação. ***Redes neurais artificiais:*** Disponível em: <http://www.icmc.usp.br/pessoas/andre/research/neural/>.  Acessado em: 02/05/2014.
# 
# [9] Universidade Estadual de Maringá, Departamento de Informática. ***Neurais:*** Disponível em: <http://www.din.uem.br/ia/neurais/>. Acessado em: 09/05/2014.
# 
# [10] SANTOS, E. D. F. da S. L.; T., G. G.; MANCINI, W. D.. ***Comunicação da informação nas redes neurais artificiais***. Disciplina: BC0506 Comunicação e Redes. Prof. Dr. Itana Stiubiener. Santo André, SP, Brasil, 09 de maio de 2014.
# 
# [11] SANTOS, E. D. F. da S. L.. ***Projeto dirigido: funções de base radial.*** Universidade Federal do ABC (UFABC), Santo André, 2014.
# 
