U0 VerseArray[31] = {
    "John 3:16 - For God so loved the world, that He gave His only begotten Son...",
    "Psalm 23:1 - The Lord is my shepherd; I shall not want.",
    "Philippians 4:13 - I can do all things through Christ who strengthens me.",
    "Proverbs 3:5 - Trust in the Lord with all your heart and lean not on your own understanding.",
    "Isaiah 41:10 - Fear not, for I am with you; be not dismayed, for I am your God.",
    "Romans 8:28 - And we know that all things work together for good to those who love God.",
    "Matthew 11:28 - Come to me, all who labor and are heavy laden, and I will give you rest.",
    "2 Timothy 1:7 - For God gave us a spirit not of fear but of power and love and self-control.",
    "Joshua 1:9 - Be strong and courageous. Do not be frightened, for the Lord your God is with you.",
    "Hebrews 11:1 - Now faith is the assurance of things hoped for, the conviction of things not seen.",
    "Jeremiah 29:11 - For I know the plans I have for you, declares the Lord.",
    "Ephesians 2:8 - For by grace you have been saved through faith.",
    "1 Corinthians 13:13 - And now these three remain: faith, hope, and love. But the greatest of these is love.",
    "Psalm 46:1 - God is our refuge and strength, an ever-present help in trouble.",
    "James 1:2-3 - Consider it pure joy, my brothers and sisters, whenever you face trials of many kinds.",
    "1 Peter 5:7 - Cast all your anxiety on Him because He cares for you.",
    "Romans 12:12 - Be joyful in hope, patient in affliction, faithful in prayer.",
    "Isaiah 40:31 - But those who hope in the Lord will renew their strength.",
    "Matthew 5:16 - Let your light shine before others, that they may see your good deeds and glorify your Father in heaven.",
    "Psalm 118:24 - This is the day that the Lord has made; let us rejoice and be glad in it.",
    "Colossians 3:23 - Whatever you do, work at it with all your heart, as working for the Lord.",
    "Proverbs 16:3 - Commit to the Lord whatever you do, and He will establish your plans.",
    "Matthew 6:33 - Seek first the kingdom of God and His righteousness, and all these things will be given to you.",
    "Galatians 5:22-23 - But the fruit of the Spirit is love, joy, peace, forbearance, kindness, goodness, faithfulness, gentleness, and self-control.",
    "2 Corinthians 5:7 - For we live by faith, not by sight.",
    "Micah 6:8 - He has shown you, O mortal, what is good. And what does the Lord require of you?",
    "John 14:6 - Jesus answered, 'I am the way, the truth, and the life. No one comes to the Father except through me.'",
    "Revelation 21:4 - He will wipe every tear from their eyes.",
    "Psalm 91:11 - For He will command His angels concerning you to guard you in all your ways.",
    "Romans 15:13 - May the God of hope fill you with all joy and peace as you trust in Him."
};

Void DisplayRandomVerse() {
    U8 randomIndex = Random(31); // Generate a random number between 0 and 30
    Print("Bible Verse of the Day (Random):\n");
    Print("\n");
    Print(VerseArray[randomIndex]);
    Print("\n");
}

Void DisplayDateBasedVerse() {
    U8 day = DATE().d; // Get the current day of the month
    U8 index = day - 1; // Adjust to zero-based index
    Print("Bible Verse of the Day (Based on Date):\n");
    Print("\n");
    Print(VerseArray[index]);
    Print("\n");
}

Void Main() {
    U8 choice;
    ClrScr(); // Clear the screen

    While (1) {
        Print("Welcome to the Bible Verse of the Day Program!\n");
        Print("Choose an option:\n");
        Print("1. Get a random Bible verse\n");
        Print("2. Get a Bible verse based on today's date\n");
        Print("3. Exit\n");
        Print("Enter your choice: ");
        choice = GetKey() - '0'; // Convert key to a number
        Print("\n");

        Switch (choice) {
            Case 1:
                ClrScr();
                DisplayRandomVerse();
                Break;

            Case 2:
                ClrScr();
                DisplayDateBasedVerse();
                Break;

            Case 3:
                Print("Thank you for using the Bible Verse program. God bless!\n");
                Return;

            Default:
                Print("Invalid choice. Please try again.\n");
        }
        Print("\nPress any key to return to the menu...\n");
        GetKey(); // Wait for user input before returning to the menu
        ClrScr();
    }
}
