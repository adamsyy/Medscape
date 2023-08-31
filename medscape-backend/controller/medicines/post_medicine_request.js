const Medicine_deliverySchema=require('../../model/Medicine_delivery');

module.exports.post_requests = async (req, res) => {
    const { name,from,to,phone } = req.body;
    try {
       const new_request = new Medicine_deliverySchema({
            name,
            from,
            to,
            phone
        });
        await new_request.save();
        res.status(200).json({
            success: true,
            message: "Request sent successfully",
            new_request
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
