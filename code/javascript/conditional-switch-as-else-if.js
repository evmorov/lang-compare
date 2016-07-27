let score = 76;
let grade = (() => { switch (false) {
  case score >= 60: return 'F';
  case score >= 70: return 'D';
  case score >= 80: return 'C';
  case score >= 90: return 'B';
  default: return 'A';
} })();
console.log(grade);
