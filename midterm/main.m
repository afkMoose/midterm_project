% Main script to demonstrate the functionality
db = StudentDatabase();  % Create a new StudentDatabase object

% Adding sample students
db = db.addStudent(Student(1, 'Matthew', 18, 3.2, 'Mechanical Engineering'));
db = db.addStudent(Student(2, 'Sam', 21, 3.5, 'Chemistry'));
db = db.addStudent(Student(3, 'Voldemort', 19, 3.9, 'Wizardry'));

% Performing searches
student = db.findStudentByID(1);  % Find student by ID
if ~isempty(student)
    student.displayInfo();  % Display student information
end

studentsCH = db.getStudentsByMajor('Mechanical Engineering');  % Get students by major
for i = 1:length(studentsCH)
    studentsCH(i).displayInfo();  % Display information for each student
end

% Generating visualizations
visualizeData(db);  % Call the function to visualize data

% Saving and loading database
db.saveToFile('StudentDatabase.mat');  % Save the database to a file
db = db.loadFromFile('StudentDatabase.mat');  % Load the database from a file