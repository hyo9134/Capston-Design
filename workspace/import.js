// Imports

const firestoreService = require('firestore-export-import');
const firebaseConfig = require('./config.js');
const serviceAccount = require('./serviceAccount.json');
const admin= require("firebase-admin");

//initializeApp
admin.initializeApp({
    credential: admin.credential.cert(serviceAccount),
    databaseURL:"https://hanmodumo-ddc14-default-rtdb.firebaseio.com"
})

// JSON To Firestore

const jsonToFirestore = async () => {
try {

console.log('Firebase Initialized');
await firestoreService.restore("./lectureList22_2_컴퓨터공학.json");
console.log('Upload Success');

}

catch (error) {
console.log(error);
}

};

jsonToFirestore();