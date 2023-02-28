export function caseChange() {
    str = prompt('Введите строку для изменения регистра', '');
    console.log(str[0].toUpperCase()+ str.slice(1,str.length).toLowerCase())
}

export function putSpaces() {
    str = prompt('Введите строку для корректировки пробелов', '');
    //уверена что можно проще, но так и не дошла до этой умной мысли
    str = str.replace(/\s+/g,' ')    
    str = str.replace(/  ,  /g,', '). replace(/ , /g,', ').replace(/,/g,', ').replace(/,  /g,', ') 
    str = str.replace(/\./g,'. ').replace(/ \. /g,'. ').replace(/  \. /g,'. ').replace(/\.  /g,'. ')
    console.log(str)
    }

export function wordCounter() {
    str = prompt('Введите строку для посчета слов', '');
    console.log(str.split(' ').length)
}

export function uniqueWord() {
    str = prompt('Введите строку для подсчета уникальных слов', '');
    let counter = {}
    let arrayWords = str.split(' ')
    for (let word of arrayWords) {
        word = word.toLowerCase()
        word = word.replace(/,/g, '')
        if (counter[word] === undefined) {
            counter[word] = 1;
        } else {
            counter[word]++;
        }
    }
    for (let i in counter) {
        console.log(`Слово "${i}" встречается в тексте ${counter[i]} раз(а)`)
    }   
}
