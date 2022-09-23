import a from 'bbb'

const f = (x) => x
const g = (a, b) => {
  return `12${a}${b}3` + 123 + a + b
}
var x = [1.2, null, undefined]
let y = x.a?.b

with(x) {
  x()
  delete x
}

function ff() { gg }
function* gg() { yield ff }

while(true) {
  const o = { r: /reg/i }
  const oo = { o }
  if(oo) {
    continue
  } else {
    break
  }
}

async function aa() { }
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

class C {
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
    return this.height * this.width;
  }
}

export default Rectangle
