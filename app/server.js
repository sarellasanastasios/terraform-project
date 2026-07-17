const express = require("express");
const app = express();

app.get("/", (req, res) => {
    res.json({ message: "Hello from AKS Node.js!" });    
});


app.get("/health", (req, res) => {
    res.status(200).json({ status: "ok" });
});


app.get("/ready", (req, res) => {
    res.status(200).json({ status: "ready" });
});



const port = process.env.PORT || 3000;

app.listen(port, () => {
    console.log(`Server running on port ${port}`);
});