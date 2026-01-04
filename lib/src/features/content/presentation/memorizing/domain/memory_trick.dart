import '../../../domain/content.dart';

class MemoryTrick extends Content {
  final String content;
  final MemoryTrickType type;

  MemoryTrick({
    required this.content,
    required this.type,
  });
}

enum MemoryTrickType {
  // These are some common memory tricks used to enhance memory retention and recall.
  // acrostic: A mnemonic device where the first letter of each word in a phrase
  // or sentence is used to form a new word or phrase.
  acrostic,
  // acronyms: A mnemonic device formed from the initial letters of a series of words,
  // creating a new word that is easier to remember.
  acronyms,
  // association: A technique that links new information to something already known,
  // creating a mental connection that aids in recall.
  association,
  // chunking: A method of breaking down large pieces of information into smaller,
  // manageable units or "chunks" to enhance memory retention.
  chunking, 
  // methodOfLoci: A mnemonic technique that involves visualizing a familiar place
  // and associating items to be remembered with specific locations within that place.
  methodOfLoci,
  // songsOrRhymes: Using melodies or rhymes to make information more memorable,
  // as the rhythm and melody can aid in recall.
  songOrRhymes,
  // story: Creating a narrative that incorporates the information to be remembered,
  // making it more engaging and easier to recall.
  story,
  // mindPalace: A mnemonic technique that involves visualizing a "palace" or
  // familiar structure and placing items to be remembered within that structure,
  mindPalace,
  analogy,
  // pegSystem: A mnemonic technique that uses a predefined list of "pegs" or
  // keywords to associate with items to be remembered, often using numbers or letters.
  pegs,
  // pao: A mnemonic technique that combines a person's name, an action, and an object
  // to create a vivid mental image, making it easier to remember sequences of information.
  pao,
  // mnemonics: General term for various memory aids or techniques used to enhance
  // memory retention and recall, including acronyms, rhymes, and visualizations.
  mnemonics,
  // eduSong: A specific type of song designed to educate or reinforce learning,
  // often incorporating educational content into a musical format.
  eduSong,
  // eduRap: A form of rap music that incorporates educational content, making learning
  // engaging and memorable through rhythm and rhyme.
  eduRap,
  // sayItAloud: A technique where information is spoken out loud to reinforce memory
  // retention, as auditory repetition can enhance recall.
  sayItAloud,
}
