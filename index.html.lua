<!DOCTYPE html>
<html lang="ar">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>متجري الإلكتروني</title>

<style>
body {
    font-family: Arial;
    background: #f4f4f4;
    margin: 0;
    padding: 0;
    text-align: center;
}

header {
    background: #111;
    color: white;
    padding: 20px;
    font-size: 24px;
}

.products {
    display: flex;
    justify-content: center;
    gap: 20px;
    padding: 40px;
    flex-wrap: wrap;
}

.card {
    background: white;
    width: 250px;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

.card img {
    width: 100%;
    border-radius: 10px;
}

button {
    background: #28a745;
    color: white;
    border: none;
    padding: 10px;
    margin-top: 10px;
    cursor: pointer;
    width: 100%;
    border-radius: 5px;
}

button:hover {
    background: #218838;
}

.cart {
    background: white;
    padding: 20px;
    margin: 20px;
    border-radius: 10px;
}
</style>
</head>

<body>

<header>🛒 متجري الإلكتروني</header>

<div class="products">

    <div class="card">
        <img src="https://via.placeholder.com/250">
        <h3>منتج 1</h3>
        <p>السعر: 50 ريال</p>
        <button onclick="addToCart('منتج 1',50)">شراء</button>
    </div>

    <div class="card">
        <img src="https://via.placeholder.com/250">
        <h3>منتج 2</h3>
        <p>السعر: 100 ريال</p>
        <button onclick="addToCart('منتج 2',100)">شراء</button>
    </div>

</div>

<div class="cart">
    <h2>🧾 سلة المشتريات</h2>
    <ul id="cartItems"></ul>
    <h3 id="total">المجموع: 0 ريال</h3>
</div>

<script>
let total = 0;

function addToCart(name, price) {
    let cart = document.getElementById("cartItems");
    let li = document.createElement("li");
    li.textContent = name + " - " + price + " ريال";
    cart.appendChild(li);

    total += price;
    document.getElementById("total").textContent = "المجموع: " + total + " ريال";
}
</script>

</body>
</html>