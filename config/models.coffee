
module.exports.models =
  schema: true
  
  migrate: 'safe'
  
  attributes:
    created_at:
      type: 'number'
      autoCreatedAt: true

    updated_at:
      type: 'number'
      autoUpdatedAt: true

    id:
      type: 'string'
      columnName: '_id'

# sails native 'findOne' may can cause errors, when more than one record is found.
  find_one_safe: (criteria) ->
    records = await @find criteria
    return null if not records or records.length is 0
    return records[0]

  create_or_update: (criteria, values) ->
    record = await @find_one_safe criteria
    return await @create_safe values if not record
    records = await @update_safe criteria, values
    return records[0] if records and records[0]
    null
    
  update_safe: (criteria, values) ->
    await ((@update criteria).set values).fetch()
  
  create_safe: (values) ->
    await (@create values).fetch()

