const {
  findAll,
  findOne,
  createOne,
  modifyOne,
  removeOne,
} = require("../model/studentModel.js")

const getAll = (req, res) => {
  findAll()
    .then((data) => res.json(data))
    .catch((err) => res.status(500).json({ message: "Server error" }))
}

const getOne = (req, res) => {
  const id = parseInt(req.params.id, 10)

  if (isNaN(id)) {
    res.status(400).json({ message: "wrong id type !" })
  }

  findOne(id)
    .then(([data]) => {
      if (data) {
        res.json(data)
      } else {
        res.status(404).json({ message: "No student found with this id !" })
      }
    })
    .catch((err) => res.status(500).json({ message: "Server error" }))
}

const addOne = (req, res) => {
  const student = req.body

  createOne(student)
    .then((result) => res.status(201).json(result))
    .catch((err) => res.status(500).json({ message: "Server error" }))
}

const editOne = (req, res) => {
  const id = parseInt(req.params.id, 10)

  if (isNaN(id)) {
    res.status(400).json({ message: "wrong id type !" })
  }

  const student = req.body

  modifyOne(student, id)
    .then((result) => {
      if (result.affectedRows === 1) {
        res.json({ id, ...student })
      } else {
        res.status(404).json({ message: "No student found with this id !" })
      }
    })
    .catch((err) => res.status(500).json({ message: "Server error" }))
}

const deleteOne = (req, res) => {
  const id = parseInt(req.params.id, 10)

  if (isNaN(id)) {
    res.status(400).json({ message: "wrong id type !" })
  }

  removeOne(id)
    .then((result) => {
      if (result.affectedRows === 1) {
        res.sendStatus(204)
      } else {
        res.status(404).json({ message: "No student found with this id !" })
      }
    })
    .catch((err) => res.status(500).json({ message: "Server error" }))
}

module.exports = { getAll, getOne, addOne, editOne, deleteOne }
