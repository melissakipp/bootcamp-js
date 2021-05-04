import { getRandomDadJoke } from "give-me-a-joke";
import colors from "colors";

getRandomDadJoke(function (joke) {
  console.log(joke.rainbow);
});

