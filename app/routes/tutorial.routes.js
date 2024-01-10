module.exports = app => {
  const tutorials = require("../controllers/tutorial.controller.js");

  var router = require("express").Router();

 const Product_routes = require('./product_routes');
 const User_routes = require('./user_routes');
 const Auth_routes = require('./auth_routes');

  // Create a new Tutorial
  // router.post("/", tutorials.create);

  // Retrieve all Tutorials
  // router.get("/", tutorials.findAll);

  // Retrieve all published Tutorials
  // router.get("/published", tutorials.findAllPublished);

  // Retrieve a single Tutorial with id
  // router.get("/:id", tutorials.findOne);

  // Update a Tutorial with id
  // router.put("/:id", tutorials.update);

  // Delete a Tutorial with id
  // router.delete("/:id", tutorials.delete);

  // Delete all Tutorials
  // router.delete("/", tutorials.deleteAll);

  // app.use('/api/tutorials', router);

    app.use('/api/products', Product_routes);
    app.use('/api/users', User_routes);
    app.use('/api/auth', Auth_routes);
   
};
