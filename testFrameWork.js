
function style (text, colorCode) {
  return "\033[" + colorCode + "m" + text + "\033[0m";
}

function green(text) {
  return style(text, "32");  
}

function red(text) {
  return style(text, "31"); 
}

function yellow(text) {
  return style(text, "33"); 
}

function underline(text) {
  return  style(text, "4");
}

function print (headline){
  console.log(yellow((underline(headline))));
}


function testArray (programOutput, expectedOutput, testTitle) {
  const newline = "\n";
  const expectedVsActual = newline + " Expected : " + green(expectedOutput) + newline + "  Actual : " + red(programOutput);
  const failedInfo = "❌ " + testTitle + expectedVsActual;  
  const passedInfo = "✅ " + testTitle;

  const result = areEqual(expectedOutput, programOutput) ? passedInfo : failedInfo;
  console.log(result); 
}

function test (programOutput, expectedOutput, testTitle) {
  const newline = "\n";
  const expectedVsActual = newline + " Expected : " + green(expectedOutput) + newline + "  Actual : " + red(programOutput);
  const failedInfo = "❌ " + testTitle + expectedVsActual;  
  const passedInfo = "✅ " + testTitle;

  const result = (expectedOutput === programOutput) ? passedInfo : failedInfo;
  console.log(result); 
}



