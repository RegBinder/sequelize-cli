'use strict';

Bluebird  = require('bluebird')
Sequelize = require('sequelize')

module.exports =
  up: (db) ->
    Bluebird
      .delay(1000)
      .then(() -> db.bulkInsert 'Person', [ name: 'John Doe' ], name: {} )
      .then(() -> db.bulkInsert 'Task',   [ title: 'Find own identity' ], title: {} )
