// ScriptureQuiz.HC

// Define a structure for quiz questions
Struct Question {
    Str8 prompt;     // The question text
    Str8 options[4]; // Multiple-choice options
    U8 correct;      // Index of the correct option (0-3)
};

// Define an array of questions
Struct Question QuizArray[5] = {
    {"What is the first book of the Bible?",
     {"Genesis", "Exodus", "Leviticus", "Numbers"},
     0},
    {"Who led the Israelites out of Egypt?",
     {"David", "Moses", "Joshua", "Solomon"},
     1},
    {"How many days did God take to create the world?",
     {"5", "6", "7", "8"},
     1},
    {"What is the shortest verse in the Bible?",
     {"Jesus wept.", "Pray without ceasing.", "God is love.", "Rejoice always."},
     0},
    {"Who betrayed Jesus?",
     {"Peter", "Judas Iscariot", "John", "Thomas"},
     1}
};

// Function to display a single question and get the user's answer
Bool AskQuestion(Struct Question *q) {
    U8 userChoice;
    Print("\nQuestion:\n");
    Print(q->prompt);
    Print("\n");

    // Display options
    For (U8 i = 0; i < 4; ++i) {
        Print(" ");
        PrintChar('A' + i); // Option letters (A, B, C, D)
        Print(". ");
        Print(q->options[i]);
        Print("\n");
    }

    // Get user's choice
    Print("\nEnter your answer (A-D): ");
    userChoice = GetKey() - 'A'; // Convert input to index
    PrintChar('A' + userChoice); // Echo input
    Print("\n");

    // Check if answer is correct
    If (userChoice == q->correct) {
        Print("Correct!\n");
        Return TRUE;
    } Else {
        Print("Incorrect. The correct answer was: ");
        PrintChar('A' + q->correct);
        Print(". ");
        Print(q->options[q->correct]);
        Print("\n");
        Return FALSE;
    }
}

// Main function
Void Main() {
    U8 score = 0;
    ClrScr(); // Clear the screen
    Print("Welcome to the Scripture Quiz!\n");
    Print("Test your knowledge of the Bible.\n\n");

    // Loop through the quiz questions
    For (U8 i = 0; i < 5; ++i) {
        If (AskQuestion(&QuizArray[i])) {
            ++score; // Increment score for correct answers
        }
        Print("\n");
    }

    // Display final score
    Print("Quiz Completed!\n");
    Print("Your Score: ");
    PrintInt(score);
    Print(" / 5\n");

    If (score == 5) {
        Print("Amazing! Perfect score! Keep up the great work!\n");
    } Else If (score >= 3) {
        Print("Good job! You know your scriptures well.\n");
    } Else {
        Print("Keep studying the Word. You'll do better next time!\n");
    }

    Print("\nThank you for playing the Scripture Quiz. God bless!\n");
}
