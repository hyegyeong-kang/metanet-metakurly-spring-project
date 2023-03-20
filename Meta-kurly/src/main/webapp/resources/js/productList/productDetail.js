let plus = document.querySelector(".plus");
let minus = document.querySelector(".minus");
let result = document.querySelector("#result");
let totalCost = document.querySelector("#totalCost");

var productPrice = document.getElementById("productPrice").innerHTML;
productPrice = parseInt(productPrice)


let i = 1;

plus.addEventListener("click", () => {
	console.log(productPrice);
	
	i++;
	result.textContent = i;
	 let totalcostNum = i * productPrice; 
	 totalCost.textContent = totalcostNum.toLocaleString(); 
})

minus.addEventListener("click", () => {
	if (i > 1) {
		i--;
		result.textContent = i;
		let totalcostNum = i * productPrice;
		totalCost.textContent = totalcostNum.toLocaleString(); 
	} else {
		totalCost.textContent = productPrice.toLocaleString(); 
	}
	
})

