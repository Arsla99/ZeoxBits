const express = require('express');
const router = express.Router();

// Mock bookings data
let bookings = [];

// Create a booking
router.post('/', (req, res) => {
    const { userId, serviceId, date } = req.body;
    const booking = { id: bookings.length + 1, userId, serviceId, date };
    bookings.push(booking);
    res.status(201).json(booking);
});

// Get all bookings
router.get('/', (req, res) => {
    res.json(bookings);
});

module.exports = router;
