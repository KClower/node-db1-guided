const db = require('../../data/db-config.js')

module.exports = {
  get,
  getById,
  create,
  update,
  remove,
}

function get() {

  return db('shippers')

}

function getById(shipperId) {
  return db('shippers')
    .where({ shipperId: shipperId })
    .first()

}

async function create(newShipper) {
  const result = await db('shippers')
    .insert(newShipper)
  const createdShipperId = result[0]
  return getById(createdShipperId)
}

function update(shipperId, changes) {
  return db('shippers')
    .where({ shipperId: shipperId })
    .update({ ...changes }, ["ShipperID", "ShipperName", "Phone"])
}

async function remove(shipperId) {
  const shipperToDelete = await getById(shipperId)
  await db('shippers')
    .where({ shipperId: shipperId })
    .delete()
  return shipperToDelete
}
