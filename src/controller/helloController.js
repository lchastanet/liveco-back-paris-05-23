const notFoundAction = (req, res) =>
  res.status(404).json({ message: "Not Found !" });

const helloAction = (req, res) => res.send("ok");

module.exports = { notFoundAction, helloAction };
