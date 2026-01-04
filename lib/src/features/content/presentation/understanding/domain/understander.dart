import '../../../domain/content.dart';

abstract class Understander extends Content {}

// Create and list of all understander types as enum
enum UnderstanderType {
  // Uses metaphors to describe concepts by comparing them to unrelated things, enhancing understanding.
  // Uses metaphors to draw parallels between different concepts, enhancing understanding.
  metaphor,

  // Uses similes to compare concepts using "like" or "as", making explanations clearer.
  simile,

  // Uses analogies to explain concepts, making them relatable and easier to understand.
  analogy,

  // Provides concrete examples to illustrate abstract concepts.
  example,

  // Uses real-world scenarios to explain concepts, making them more tangible.
  realWorldScenario,

  // Uses visual aids like diagrams, charts, or graphs to explain concepts.
  visualAid,

  // Uses stories or narratives to explain concepts, making them more engaging and memorable.
  narrative,

  // Uses comparisons to highlight similarities and differences between concepts.
  comparison,

  // Uses step-by-step explanations to break down complex concepts into manageable parts.
  stepByStep,

  // Uses definitions to clarify the meaning of terms or concepts.
  definition,

  // Uses questions to prompt critical thinking and deeper understanding of concepts.
  questioning,

  // Uses summaries to condense information and highlight key points.
  summary,
}
