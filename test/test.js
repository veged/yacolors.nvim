import a from 'bbb'

const f = (x) => x
const g = (a, b) => {
  return `12${a}${b}3` + 123 + a + b;
}
var x = [1.2, null, undefined]
let y = x.a?.b

with(x) {
  x()
  delete x
  decodeURI()
}

function ff(a, b) {
  "use strict"
  arguments
}
function* gg() { yield ff }
async function* ggg() { yield ff }

while(true) {
  const o = { r: /reg/i, n: 1 }
  const oo = { o }
  Object.values({})
  Array.isArray([])
  window
  if(oo) {
    continue
  } else {
    break
  }
}

async function aa() {
  for await (let num of asyncIterable) {
    console.log(num);
  }
}
await aa()

do {

} while(f)

for (const i = 0; i <= f.length; i++) {
  i++
}

for (let k of g) {
  some(k)
}

for (const k in g) {
  some(k)
}

if (x in y) {
  debugger
  return 1
}

class C extends CC {
  constructor() {
    switch(a) {
      case 1:
        1
      default:
        2
    }
  }
}

class Rectangle {
  constructor(height, width) {
    this.height = height;
    this.width = width;
  }
  static displayName = "Rectangle";
  static f() { C }

  // Getter
  get area() {
    return this.calcArea();
  }
  // Setter
  set area() {
    try {
      1 in a
    } catch(e) {
      e instanceof C
    } finally {
      typeof C
    }
  }
  // Method
  calcArea() {
    throw new Error('eee');
    return this.height * this.width;
  }

  // Generator
  *genMethod() {}

  // Async
  async genMethod() {}
}

export default Rectangle
