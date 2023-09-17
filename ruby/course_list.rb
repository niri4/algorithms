# Given that courses are organized by prerequisites in the following array:

prereq_courses = [
 ["Software Design", "Algorithms"],
 ["Foundations of Computer Science", "Operating Systems"],
 ["Computer Networks", "Computer Architecture"],
 ["Computer Architecture", "Software Design"],
 ["Algorithms", "Foundations of Computer Science"],
 ["Data Structures", "Computer Networks"]
]

# Question: find the first course 
# Output: 'Data Structures'

# Question: list all courses in order
# Output: 
#  'Data Structures',
#  'Computer Networks',
#  'Computer Architecture',
#  'Software Design',
#  'Algorithms',
#  'Foundations of Computer Science',
#  'Operating Systems',

def all_courses(hash: {}, value: "", result_courses: [])
   return result_courses if hash[value].nil?
   value1 = hash[value]
   result_courses << value1
   hash[value] = nil
   all_courses(hash: hash, value: value1, result_courses: result_courses)
end
result_courses = []
hash = {}
prereq_courses.map { |k, v| hash[k] = v }
value = (hash.keys - hash.values)[0]
result_courses << value
puts all_courses(hash: hash, value: value, result_courses: result_courses)
