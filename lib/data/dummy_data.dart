import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Carnes',
  ),
  Category(
    id: 'c2',
    title: 'Massas',
  ),
  Category(
    id: 'c3',
    title: 'Sobremesa',
  ),
  Category(
    id: 'c4',
    title: 'Rápido & Fácil',
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: ['c1', 'c4'],
    title: 'Strogonoff',
    imageUrl:
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjZab5IHNvE3tJlk3hnoacASv5k0WUY4zEXQWmt3LFcmuWQmNHobiyncsyZieaNTF-VbqS7BP988YlbBofIWPPzvJuKCm3XZE7bcPYmMsA1LBbS_zq8mTddLrO_b331cOVKDr4G9H97xcKJhqcHpsUL8Edgm_LLm81b-_dOPXo7-9Q0S45x-SfTPhan/s1500/strogonoff-de-carne.jpg',
    ingredients: [
      '500g de Carne (Alcatra, Contra Filé)',
      '1 Sazom Carne + 1/4 Creme de cebola',
      '1 Pct Molho de Tomate Heinz Tradicional',
      'Ketchup a gosto (Zero Hemmer)',
      'Mostarda a gosto (Zero Hemmer)',
      '1 Cx Creme de Leite',
      'Batata Palha a gosto'
    ],
    steps: [
      'Cozinhar a carne jogando os temperos direto na panela',
      'Depois da carne cozida, adicionar o molho de tomate inteiro e cozinhar um pouco',
      'Adicionar a caixa de creme de leite inteira',
      'Ir mexendo e adicioando ketchup/mostarda até dar o sabor desejado'
    ],
    duration: 20,
    isFit: false,
    complexity: Complexity.Simple,
    cost: Cost.Fair,
  ),
  Meal(
    id: 'm2',
    categories: ['c1', 'c2'],
    title: 'Panqueca Integral',
    imageUrl:
        'https://meudiariodereceitas.com.br/wp-content/uploads/2020/09/panqueca-de-carne-moida-e-molho-de-tomate.png',
    ingredients: [
      '1 Ovo',
      '1 Colher de Azeite',
      '200 ml de Leite',
      'Sal e Pimenta do Reino a gosto',
      '10 Colheres de Farinha de Trigo Integral',
      '500g Carne moida (musculo)',
      '1 Sazom Carne + 1/4 Creme de cebola',
      'Molho de tomate Heinz Tradicional',
      'Queijo Mussarela Fatiado',
    ],
    steps: [
      'Jogar Ovo, azeite, leite e sal/pimenta no liquidificador e bater',
      'Jogar a Farinha de Trigo Integral até dar consistencia',
      'Cozinhar a carne jogando os temperos direto na panela',
      'Jogar o molho de tomate e cozinhar um pouco',
      'Untar a frigideira e fazer as panquecas e montar'
    ],
    duration: 40,
    isFit: true,
    complexity: Complexity.Medium,
    cost: Cost.Fair,
  ),
  Meal(
    id: 'm3',
    categories: ['c1'],
    title: 'Carne de Panela',
    imageUrl:
        'https://comidinhasdochef.com/wp-content/uploads/2018/09/Carne-de-Panela-Simples.jpg',
    ingredients: [
      '1 KG de Acém',
      '1 Cebola',
      'Cenoura a vontade',
      'Batata a vontade',
      'Molho de tomate Heinz Tradicional'
          'Tomate a vontade',
    ],
    steps: [
      'JLigar a panela e colocar a carne pra selar ate secar a agua',
      'Adiciona cebola, molho de tomate e tomate',
      'Cozinhar a carne jogando os temperos direto na panela',
      'Preenche com agua ja quente ate cobrir a carne e poe na pressão por 20 min',
      'Abre e adiciona os legumes e pressão por mais 10 min'
    ],
    duration: 60,
    isFit: true,
    complexity: Complexity.Simple,
    cost: Cost.Cheap,
  ),
  Meal(
    id: 'm4',
    categories: ['c3'],
    title: 'Milk Shake Proteico',
    imageUrl:
        'https://tfbrnp.vtexassets.com/arquivos/ids/159665-800-800?v=637777016264570000&width=800&height=800&aspect=true',
    ingredients: [
      '100g Sorvete de Creme',
      '100ml Leite',
      '50g Whey Protein',
    ],
    steps: [
      'Bater tudo com o Mixer',
    ],
    duration: 10,
    isFit: true,
    complexity: Complexity.Simple,
    cost: Cost.Fair,
  ),
];
