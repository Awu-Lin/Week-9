CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point

cd /Users/22697/Desktop/list-examples-grader/student

if [ ! -f "ListExamples.java" ]
then
    echo "No submission"
    exit
fi

cd /Users/hojoon/Desktop/list-examples-grader

cp student-submission/ListExamples.java ./grading-area
cp /Users/hojoon/Desktop/list-examples-grader/TestListExamples.java ./grading-area
cp /Users/hojoon/Desktop/list-examples-grader/lib/hamcrest-core-1.3.jar ./grading-area
cp /Users/hojoon/Desktop/list-examples-grader/lib/junit-4.13.2.jar ./grading-area
cd /Users/hojoon/Desktop/list-examples-grader/grading-area

javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestListExamples