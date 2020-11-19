import fs from "fs";

const quesion1 = () => {
  fs.readFile("input.txt", (err, data) => {
    console.time("solve");
    if (err) {
      console.log(err);
    }
    const inp = data.toString().split("");
    const ans = inp.reduce((acc, curr) => {
      if (curr === "(") {
        return (acc += 1);
      } else if (curr === ")") {
        return (acc -= 1);
      }
    }, 0);
    console.timeEnd("solve");
    console.log(ans);
  });
};

const question2 = () => {
  fs.readFile("input.txt", (err, data) => {
    console.time("solve");
    if (err) {
      console.log(err);
    }
    const inp = data.toString().split("");
    let acc = 0;
    let count = 0;
    inp.some((curr) => {
      if (curr === "(") {
        acc += 1;
      } else if (curr === ")") {
        acc -= 1;
      }
      count++;
      return acc < 0;
    });
    console.timeEnd("solve");
    console.log(count);
  });
};

quesion1();
question2();
