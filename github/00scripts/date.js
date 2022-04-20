#! node

// JS SHELL SCRIPT
//
// Based on https://www.youtube.com/watch?v=0Gsq5q898Nw
// 'Bareley coding with Daniel Bark'
//
//
// cd into a $PATH's folder
// $ cd /sbin
// $ vim scripture.js && chmod +x scripture.js
// ## write code in file

console.log('The internal clock in JavaScript counts from midnight January 1, 1970. The getTime() function returns the number of milliseconds since then:')

function getDate(){
    const d = new Date()
    console.log(d.getTime())
}
getDate();
