# Section 1
# What is content

Content CLASS is the abstract class for the folowing classes
* MemoryTrick
* Assessment
* AssessmentItem
* Understander - abstract class

Senario 
* Save the assessment, assessmentItem.
* contect exam or random test
* create and record the result
* save the result for future reference and analytics

# Section 2


ASSESSMENT
    assessemntItem
        Open        - One word
        Closed      - MCQ, T/F, Flash Card.


students record of results 
    Item wise analysis - history of attempts
    You are good at this topic-no speed, good accuracy.


Assessment
AssessmentResult
AssessmentResultAnalysis - requested by the student

PerformanceAnalysis - is the time series data of AssessmentResultAnalysis


<!-- along with assessment, the student can attempt assessment item individually. so i want to store the result of assessment item in a table -->


AssessmentItem - only consist of question and related data. no result or related data
AssessmentItemResult
    id, assessmentItemId, studentId, 
AssessmentItemResultAnalysis

PerformanceAnalysis - is the time series data of the AssessmentItemResultAnalysis


Why this platform

For students to understand which concept needs revision or not, which topic has a knowlege gap.
For teachers to understand the levels of each and every student in ease. to understand which class/topic/presentation works and not
For institutes to know overall performance


Mere record of currect and wrong answers is already done by spaced repetition apps. We are identifiying knowlege gap. HOW - 
When ever the student makes a mistake, validate the mistake with related assessmentItems in that topic and related topic. (We should use vector distance like in LLM to identify the related topic)



# Section 3
// Here’s a clearer breakdown of the inputs and algorithms you’re using to measure student performance from assessment items:

// 
// Frequency Analysis:
// Analyze how often students respond to a specific assessment item over time.
// Use this information to identify misconceptions, mistake or knowledge gaps.
// Suggest full relearning if necessary.
// 
// Item Difficulty:
// Measure the difficulty of an assessment item relative to other items.
// Understand how challenging it is for students.
// 
// Discrimination Value:
// Calculate the discrimination value for the assessment item.
// This value helps assess the knowledge gap.
// A higher value indicates better discrimination.
// 
// Response Time:
// Record the time taken from showing the question to selecting an answer.
// Helps identify confusion or uncertainty.
// 
// Rapid Answers and Guessing:
// Rapid answers with many incorrect responses may indicate guessing.x


# Section 4 utils.dart
import 'dart:math';

double calculatePointBiserial(
  List<int> binaryResponses,
  List<double> totalScores,
) {
  final int n = binaryResponses.length;
  assert(n == totalScores.length, "Input lists must have the same length.");

  // Calculate means
  final double meanY1 =
      totalScores.where((response) => response == 1).reduce((a, b) => a + b) /
          n;
  final double meanY0 =
      totalScores.where((response) => response == 0).reduce((a, b) => a + b) /
          n;

  // Calculate standard deviation of total scores
  final double sy = sqrt(totalScores
          .map((score) => pow(score - (meanY1 + meanY0) / 2, 2))
          .reduce((a, b) => a + b) /
      (n - 1));

  // Calculate N1 (number of positive responses) and N2 (number of negative responses)
  final int N1 = binaryResponses.where((response) => response == 1).length;
  final int N2 = n - N1;

  // Calculate the point-biserial correlation coefficient
  final double rpb = (meanY1 - meanY0) / (sy * sqrt(N1 * N2 / (n * (n - 1))));

  return rpb;
}

void main() {
  final binaryResponses = [
    1,
    0,
    1,
    1,
    0
  ]; // Example binary responses (1 = correct, 0 = incorrect)
  final totalScores = [
    80.0,
    60.0,
    90.0,
    85.0,
    70.0
  ]; // Example total scores (including the item)

  final rpb = calculatePointBiserial(binaryResponses, totalScores);
  print("Point-biserial correlation coefficient: $rpb");
}


# Section 5 - db tables
TABLES
===========================
students                -> id, name

=============== CONTENT ===============
#####################################################################################################
lessons                 -> id, title, description, [topics], [memoryTricks], [mindMaps], [assessments]

topics                  -> id, name, parent
lessonTopics            -> lesson_id, topic_id

memoryTricks            -> id, content[Text], type_id
memoryTrickTypes        -> id, type # acrostic, acronyms, association, chunking, methodOfLoci, songOrRhymes, story, mindPalace, pegs, pao, mnemonics
lessonMemoryTricks      -> id, lesson_id, memory_trick_id
memoryTrickTopics       -> trick_id, topic_id

mindMaps                -> id, name, caption, root_node_id
mindMapNodes            -> id, name, description, image, excerpt, parent_id # connectedNodes is used in entity
lessonMindMaps          -> id, lesson_id, mind_map_id
mindmapTopic            -> mindmap_id, topic_id

assessments             -> id, name, type, items,
assessmentItems         -> id, assessment_id, assessment_item_table, assessment_item_id
assessmentTopic         -> assessment_item_table, assessment_item_id, topic_id
mcq_item                -> id, question, option1, option2, option3, ........., option12
flashcard_item          -> id, question, explanation
one_word_item           -> id, question, auther_answer

#####################################################################################################


=============== LEARN ===============
#####################################################################################################
learningactivity        -> activity_id, user_id, lesson_id, activity_type(learning, assessment, revision), timestamp, score, duration
item_analysis           -> id, assessment_item_id, duration, user_response

#####################################################################################################


=============== REVISION ===============
revision is not just for lessons and assessments. It is also for assessmentItem or it should clearly around assessmentItem
#####################################################################################################
revision                -> id, user_id, (any of) lesson_id (or) assessment_id, timestamp, result(positive, nagative, neutral)

attempts                -> id, user_id, assessment_item_table, assessment_item_id, studentResponse, timeTaken, result(positive, nagative, neutral), attemptCount, timeStamp

repetation-table/attempts-table        ->
    repetition_id (Primary Key)
    user_id (Foreign Key referencing the User Table)
    question_id (Foreign Key referencing the Question Table) here combination of table_name and item_id
    
    response,
    result
    timetaken
    timestamp
    
    last_repetition_date
    next_repetition_date
    interval (time until the next repetition)
    easiness_factor (a factor to adjust the interval)
    repetitions_count (number of times the user has reviewed the item)
#####################################################################################################