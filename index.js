// simple demo file for javascript github action
const core = require("@actions/core");
const github = require("@actions/github");

try {
  // `arguments-to-count` input defined in action metadata file
  const inputArgs = core.getInput("arguments-to-count");
  console.log(`Arguments = ${inputArgs}!`);
  const argCount = inputArgs.split(/\s+/).length;
  core.setOutput("argcount", argCount);
  // Get the JSON webhook payload for the event that triggered the workflow
  const payload = JSON.stringify(github.context.payload, undefined, 2);
  console.log(`The event payload: ${payload}`);
} catch (error) {
  core.setFailed(error.message);
}
