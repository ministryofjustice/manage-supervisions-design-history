const express = require('express')
const router = express.Router()
const newDomain = 'https://manage-supervisions-design-history.apps.live.cloud-platform.service.justice.gov.uk'

router.use(function (req, res, next) {
  return res.redirect(301, newDomain + req.url)
})

// Add your routes here - above the module.exports line

module.exports = router
