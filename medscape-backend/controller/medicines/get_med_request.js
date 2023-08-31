const Medicine_deliverySchema=require('../../model/Medicine_delivery');

module.exports.get_requests = async (req, res) => {

    try {
        const requests = await Medicine_deliverySchema.find();
        res.status(200).json({
            success: true,
            message: "All requests",
            requests
        });
    } catch (error) {
        console.log(error);
        res.status(500).json({
            success: false,
            message: "Internal server error",
            data: null,
        });
    }
}


