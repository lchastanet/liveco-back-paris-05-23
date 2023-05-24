const app = require("./src/app.js");

const port = parseInt(process.env.APP_PORT ?? "8000", 10);

app.listen(port, (err) => {
  if (err) {
    console.error(err);
  } else {
    console.log("Server is running on port 8000 !");
  }
});
