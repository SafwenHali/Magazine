const express=require("express");
const router = express.Router();
const Article= require("../Models/Article");

//test routing
router.get("",(req,res) => {
res.send("hello")
});




//post article
//get article
//delete article
//update article



//@POST methode
//@DESC post article 
//@PATH : localhost:1000/api/article
//Parmas Body

router.post("/", async (req,res)   => {
  try{  console.log(req.body);
    res.send("post article");
    const newArticle = new Article({...req.body});
    await newArticle.save()}
    catch(err){
        console.log(err);
        res.status(400).send("can not save it");}
    
});

module.exports = router;