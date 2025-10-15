// emydn-games/firebaseConfig.js

// 1. IMPORT FUNGSI FIREBASE DARI CDN
import { initializeApp } from "https://www.gstatic.com/firebasejs/10.12.2/firebase-app.js";
import { 
    getDatabase, 
    ref, 
    push, 
    onValue, 
    query, 
    orderByChild, 
    limitToLast 
} from "https://www.gstatic.com/firebasejs/10.12.2/firebase-database.js";


// 2. KONFIGURASI WEB APP'S FIREBASE
const firebaseConfig = {
    apiKey: "AIzaSyDomXTsnEtLiRdpVfYp7wWBXLixdIm5P10",
    authDomain: "emydn-games.firebaseapp.com",
    projectId: "emydn-games",
    // PENTING: databaseURL telah ditambahkan sesuai database Anda di Asia-Southeast1
    databaseURL: "https://emydn-games-default-rtdb.asia-southeast1.firebasedatabase.app", 
    storageBucket: "emydn-games.firebasestorage.app",
    messagingSenderId: "673352605525",
    appId: "1:673352605525:web:12a49f2631d8313554d9dc",
    measurementId: "G-SW7H07QSD6"
};


// 3. INISIALISASI FIREBASE
const app = initializeApp(firebaseConfig);
const db = getDatabase(app); // Dapatkan instance Realtime Database


// 4. EKSPOR FUNGSI DAN DB UNTUK DIGUNAKAN DI FILE LAIN
export { 
    db, 
    ref, 
    push, 
    onValue, 
    query, 
    orderByChild, 
    limitToLast 
};
