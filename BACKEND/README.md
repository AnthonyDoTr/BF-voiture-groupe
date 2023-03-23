## <div align="center">Table des matières</div>

1. [Introduction](#introduction)
2. [Installation](#installation)
3. [Cars](#cars)
4. [Customers](#customers)
5. [Sales](#sales)
6. [Auteurs](#auteurs)
## Introduction
***
Ce projet a pour but de créer un back-end qui fournira des informations de vente de voiture électrique. Dans ce projet, nous avons 3 tables : 
1. **Cars**
2. **Customers**
3. **Sales**

**Cars** représente toutes les voitures.
**Customers** représente tous les clients.
**Sales** représente toutes les ventes.

## Pré-requis
***
* [SSMS](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16) - Installer SSMS
* Créer une database nommé ``bf_voiture``
* Injecter le script du fichier ``script.sql`` dans la database

## Installation
***
Pour exéctuter ces commandes, assurez-vous d'avoir [node.js](https://nodejs.org/en)
```
$ git clone https://github.com/AnthonyDoTr/BF-voiture-groupe.git
$ npm install
$ npm install -g nodemon
$ nodemon
```

## Cars
***

## Customers
***

## Sales
***
* **GET**  `localhost:3000/bf_voiture/sales` 
Donne toutes les ventes.
* **POST**`localhost:3000/bf_voiture/sales`
Crée une ventes.
* **GET** `localhost:3000/bf_voiture/sales/1`
Donne la vente numéro 1.
* **DELETE** `localhost:3000/bf_voiture/sales/1`
Supprimer la vente numéro 1.
* **UPDATE** `localhost:3000/bf_voiture/sales/1`
Modifie la vente numéro 1.

## Auteurs
***
* **Rossitto Nicolas**
* **Houssane Amine**
* **Triantis Anthony**
* **Ghion Sylvain**
