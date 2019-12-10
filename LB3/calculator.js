let firstOperand;
let secondOperand;

let operationState;

const inputNumber = (element) => {
  const resultField = getTextField();
  resultField.value = `${resultField.value}${element.innerText}`;
  if(firstOperand && !secondOperand) {
    secondOperand = parseFloat(element.innerText);
  }
}

const getTextField = () => {
   return document.getElementsByClassName("result-field")[0];
}

const operation = (element) => {
  operationState = element.innerText;
  firstOperand = parseFloat(getTextField().value);
  getTextField().value = "";
}

const clearAll = () => {
  firstOperand = null;
  secondOperand = null;
  operationState = null;
  getTextField().value = "";
}

const removeLastSymbol = () => {
  let text = getTextField().value;
  text = text.substring(0, text.length - 1);
  getTextField().value = text;
}

const getResult = () => {
  const resultField = getTextField();
  resultField.value = "";
  let result;
  switch (operationState) {
    case '+': result = firstOperand + secondOperand; break;
    case '-': result = firstOperand - secondOperand; break;
    case '*': result = firstOperand * secondOperand; break;
    case '/': result = firstOperand / secondOperand; break;
  }
  secondOperand = null;
  operationState = null;
  firstOperand = result;
  resultField.value = firstOperand;
}



