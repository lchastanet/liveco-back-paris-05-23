import { useState } from "react"
import StudentForm from "../components/StudentForm"

function AddStudent() {
  const [student, setStudent] = useState({
    last_name: "",
    first_name: "",
    email: "",
  })

  return <StudentForm student={student} setStudent={setStudent} modCreate />
}

export default AddStudent
