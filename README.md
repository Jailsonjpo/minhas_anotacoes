# APP Minhas Anotações

## Description

An application developed with the Flutter Framework in the Dart language, the SQLite database was used, it saves the data directly on the user's device.  

<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/jailsonjpo/minhas_anotacoes/blob/master/minhasAnotacoes_Flutter.png"><img src="https://github.com/jailsonjpo/minhas_anotacoes/blob/master/minhasAnotacoes_Flutter.png" alt="Preview-Screens" style="max-width:100%;"></a></p>

## About this Project

This project is part of my personal portfolio, an application in which the user can make notes, edit and delete them, uses the SQLite database for data storage

## Functionalities

1 - Register Annotations;

2 - List Annotations;

3 - Edit the Annotations;

4 - Delete Annotations.


## Connecting the application to the server


The My Notes app uses the SQLite database that will be created as soon as the APP is started for the first time, for you to change the database name just edit the **AnnotationHelper.dart** file, in the method that initializes the Database:


```
  inicializarDB() async {
    final caminhoBancoDados = await getDatabasesPath();
    final localBancoDados =
        join(caminhoBancoDados, "banco_minhas_anotacoes.db");

    var db =
        await openDatabase(localBancoDados, version: 1, onCreate: _onCreate);
    return db;
  } 
  
  ```
  
  ## Changing the Table name
  
  To change the name of the table, just change the file **AnnotationHelper.dart** and change the name to the one you prefer.
  ```
  static final String nomeTabela = "anotacao";
  
  ```
  
  
  



