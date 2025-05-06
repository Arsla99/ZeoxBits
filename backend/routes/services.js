const express = require('express');
const router = express.Router();

// Mock services data
const services = [
    { id: 1, name: 'IT Support', description: 'Technical support for your devices.' },
    { id: 2, name: 'Network Setup', description: 'Setup and configure your network.' }
];

// Get all services
router.get('/', (req, res) => {
    res.json(services);
});

module.exports = router;
