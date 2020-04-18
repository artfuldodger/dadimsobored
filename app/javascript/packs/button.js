let ideas = [
  'Learn a new board/card game.',
  'Read the book series "Narwhal and Jelly."',
  'Play "Minecraft" (if your dad lets you).',
  'JOKER! Annoy Dad.',
  'Draw your pet, sibling, and/or parent.',
  'Design your dream home on graph paper.',
  'Design fantasy maps on inkarnate.com.',
  'JOKER! Press this button again.',
  'Make a pet rock.',
  'Do something on the home page.',
  'Print a coloring page.',
  'Make a couch fort.',
  'Tickle your sibling.',
  'Try coding with Scratch.',
  'Ask for math problems to solve.',
];

let colors = [
  'green',
  'blue',
  'red',
  'turquoise',
  'indigo',
  '#3CB371',
  '#00FA9A',
  'purple',
  'yellow',
];

$('#the-button').on('click', function(e) {
  e.preventDefault();
  let randomIdea = ideas[Math.floor(Math.random() * ideas.length)];
  $('#idea').text(randomIdea);
  $('#the-button').css('background-color', colors[Math.floor(Math.random() * colors.length)]);
});
