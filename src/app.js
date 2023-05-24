require("dotenv").config();
const {
  notFoundAction,
  helloAction,
} = require("./controller/helloController.js");

const {
  getAll,
  getOne,
  addOne,
  editOne,
  deleteOne,
} = require("./controller/studentController.js");

const express = require("express");

const app = express();

app.use(express.json());

app.get("/", helloAction);

app.get("/student", getAll);
app.get("/student/:id", getOne);
app.post("/student", addOne);
app.put("/student/:id", editOne);
app.delete("/student/:id", deleteOne);

app.get("*", notFoundAction);

module.exports = app;
