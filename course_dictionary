## Create dictionaries with course numbers as keys ##
room_numbers = {
    "CSC101": "3004",
    "CSC102": "4501",
    "CSC103": "6755",
    "NET110": "1244",
    "COM241": "1411"
}

instructors = {
    "CSC101": "Haynes",
    "CSC102": "Alvarado",
    "CSC103": "Rich",
    "NET110": "Burke",
    "COM241": "Lee"
}

meeting_times = {
    "CSC101": "8:00 a.m.",
    "CSC102": "9:00 a.m.",
    "CSC103": "10:00 a.m.",
    "NET110": "11:00 a.m.",
    "COM241": "1:00 p.m."
}

## Asking the user for a course number ##
course_number = input("Enter a course number: ").strip().upper()

## Checking if the course number exists in the dictionaries ##
if course_number in room_numbers:
    print(f"Course Number: {course_number}")
    print(f"Room Number: {room_numbers[course_number]}")
    print(f"Instructor: {instructors[course_number]}")
    print(f"Meeting Time: {meeting_times[course_number]}")
else:
    print("Sorry, the course number you entered is not in the system.")
