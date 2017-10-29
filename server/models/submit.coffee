mongoose = require('mongoose')

submitsSchema = new mongoose.Schema
    _id: String,
    time: Date,
    user: String,
    problem: String,
    outcome: String
    source: String
    language: String
    comments: [String]
    results: mongoose.Schema.Types.Mixed
    force: { type: Boolean, default: false },

submitsSchema.methods.upsert = () ->
    @update(this, {upsert: true})

submitsSchema.statics.findByUser = (userId) ->
    Submit.find
        user: userId

submitsSchema.statics.findByUserAndProblem = (userId, problemId) ->
    Submit.find({
        user: userId
        problem: problemId
    }).sort({time: 1})

submitsSchema.index({ user : 1, problem: 1, time: 1 })
submitsSchema.index({ user : 1, problem: 1, outcome: 1 })
submitsSchema.index({ outcome : 1, time : 1 })
submitsSchema.index({ time : 1 })

Submit = mongoose.model('Submits', submitsSchema);

export default Submit
