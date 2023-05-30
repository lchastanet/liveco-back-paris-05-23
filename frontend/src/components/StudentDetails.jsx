import { useEffect, useState } from "react"
import { useParams } from "react-router-dom"

import StudentForm from "./StudentForm"

function StudentDetails() {
  const { id } = useParams()

  const [student, setStudent] = useState(null)

  const [error, setError] = useState(false)

  useEffect(() => {
    fetch(`http://localhost:8000/student/${id}`)
      .then((res) => {
        if (res.status === 200) {
          return res.json()
        } else {
          setError(true)
        }
      })
      .then((data) => setStudent(data))
      .catch(() => setError(true))
  }, [id])

  if (error) {
    return <mark>Error</mark>
  }

  return student && <StudentForm student={student} setStudent={setStudent} />
}

export default StudentDetails
