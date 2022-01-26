const express = require('express');
const port = 1000;
const app = express();

//connect DB
const dbConnect = require('./config/connectDB');
dbConnect();

// route
//middle ware routing body parse
app.use(express.json());
app.use("/api/article", require("./routes/articles"))


app.listen(port, (err) => {
  err ? console.error(err) : console.log("server is running on port: ",port)
});

