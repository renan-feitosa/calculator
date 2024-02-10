var selected_operator = null;

function calculate(){
    var first_number = parseInt(document.getElementById('first-number').value)
    var second_number = parseInt(document.getElementById('second-number').value)
    let result

    switch (selected_operator) {
        case '+':
            result = first_number + second_number;
            break;
        case '-':
            result = first_number - second_number;
            break;
        case '*':
            result = first_number * second_number;
            break;
        case '/':
            result = first_number / second_number;
            break;
        default:
            result = 'Selecione um operador válido';
    }
    
    document.getElementById('result').innerText = result
}

function select_operator(_operator){
    selected_operator = _operator;
    console.log(selected_operator)
}