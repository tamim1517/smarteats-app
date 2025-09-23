const express = require('express');
const router = express.Router();
const { getStudent } = require('../controllers/studentController');

// Route to get a student by ID
router.get('/', getStudent);

module.exports = router;