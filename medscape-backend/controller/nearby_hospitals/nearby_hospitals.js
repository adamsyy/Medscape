

module.exports.nearby_hospitals = async (req, res) => {

    res.status(200).json({
        success: true,
        message: "Nearby hospitals",
        data: [
            { "name": "Family Health Center", "location": "Alur, Kerala","phone":"+916282948773" },
            { "name": "bethzada ayurvedic hospital", "location": "kottat, Kerala" ,"phone":"04802712131"},
            { "name": "Mother Hospital (P) Ltd", "location": "Thrissur, Kerala","phone":"04872434100" },
            { "name": "Thrissur Medical College", "location": "Thrissur, Kerala","phone":"04872200310" },
            { "name": "Sahrdaya Dental Clinic", "location": "kodaly, Kerala","phone":"+917657647892" },
            { "name": "Conservative Health Centre", "location": "Thrissur, Kerala","phone":"04872200310" },

        ],

    });
};
