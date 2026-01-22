// Get current time in JS
const now = new Date();

// Format as dd/MM/yyyy HH:mm:ss
function pad(n) {
	return n < 10 ? "0" + n : n;
}

const day = pad(now.getDate());
const month = pad(now.getMonth() + 1); // months are 0-based
const year = now.getFullYear();
const hours = pad(now.getHours());
const minutes = pad(now.getMinutes());
const seconds = pad(now.getSeconds());

const formatted = `${day}/${month}/${year} ${hours}:${minutes}:${seconds}`;

// Set header X-Api-Timestamp dynamically
pm.request.headers.upsert({
	key: "X-Api-Timestamp",
	value: formatted,
});

// Optionally store in a variable in case you need it elsewhere (e.g. for signature)
pm.variables.set("X_Api_Timestamp", formatted);
