const express = require('express');
const router = express.Router();
const jwt = require('jsonwebtoken');

// Mock user data
const users = [{ id: 1, username: 'user1', password: 'password1' }];

// Login route
router.post('/login', (req, res) => {
    const { username, password } = req.body;
    const user = users.find(u => u.username === username && u.password === password);
    if (user) {
        const token = jwt.sign({ id: user.id }, 'secretkey', { expiresIn: '1h' });
        res.json({ token });
    } else {
        res.status(401).json({ message: 'Invalid credentials' });
    }
});

module.exports = router;
