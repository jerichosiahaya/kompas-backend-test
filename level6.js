function evenNumberSorter(arr)
{
    let n = arr.length;
    let originalArray = [...arr]
    let evenNumbers = [];
    for (let i = 0; i < n; i++) {
        if (arr[i] % 2 == 0)
            evenNumbers.push(arr[i]);
    }
    evenNumbers.sort();
    let l = 0;
    for (let i = 0; i < n; i++) {
        if (arr[i] % 2 == 0)
            arr[i] = evenNumbers[l++];
    }
    console.log("original array: " + "[" + originalArray + "]")
    console.log("even number sorted: " + "["+arr.toString()+"]")
}

// test case
let arr = [7,18,16,12,10]; // change this 
evenNumberSorter(arr);