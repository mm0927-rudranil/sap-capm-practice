// const cds = require('@sap/cds');

// module.exports = cds.service.impl(async function() {
//   const { Books } = this.entities;

//   // Validation Hook BEFORE Creation
//   this.before('CREATE', Books, (req) => {
//     if (req.data.stock < 0) {
//       req.error(400, 'Initial stock cannot be negative.');
//     }
//   });

//   // Data Transformation AFTER Read
//   this.after('READ', Books, (each) => {
//     if (each.stock < 5) {
//       each.title += ' -- [LOW STOCK]';
//     }
//   });
// });