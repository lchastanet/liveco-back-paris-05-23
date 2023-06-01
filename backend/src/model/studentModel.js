const db = require("../model/db.js")

const findAll = () => {
  return db
    .query("select * from Student order by id desc")
    .then(([data]) => {
      return data
    })
    .catch((err) => {
      console.error(err)
    })
}

const findOne = (id) => {
  return db
    .query("select * from Student where id = ?", [id])
    .then(([data]) => {
      return data
    })
    .catch((err) => {
      console.error(err)
    })
}

const createOne = (student) => {
  const { first_name, last_name, email } = student

  return db
    .query(
      "insert into student (first_name, last_name, email) values (?, ?, ?)",
      [first_name, last_name, email]
    )
    .then(([result]) => {
      return { id: result.insertId, ...student }
    })
    .catch((err) => {
      console.error(err)
    })
}

const modifyOne = (student, studentId) => {
  return db
    .query("update student set ? where id = ?", [student, studentId])
    .then(([result]) => {
      return result
    })
    .catch((err) => {
      console.error(err)
    })
}

const removeOne = (studentId) => {
  return db
    .query("delete from student where id = ?", [studentId])
    .then(([result]) => result)
    .catch((err) => {
      console.error(err)
    })
}

module.exports = { findAll, findOne, createOne, modifyOne, removeOne }
