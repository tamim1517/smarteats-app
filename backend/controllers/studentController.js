
exports.getStudent = (req, res) => {
    try {
        const student = {
            name: "MD TAUHIDUR RAHMAN",
            studentId: "225176923"
        };
        res.status(200).json(student);
    } catch (error) {
        res.status(500).json({ error: 'Internal Server Error' });
    }
};