import { useEffect, useState } from "react"
import StudentList from "../components/StudentList"

function Home() {
  const [students, setStudents] = useState([])
  const [error, setError] = useState(false)

  useEffect(() => {
    fetch("http://localhost:8000/student")
      .then((res) => {
        if (res.status === 200) {
          return res.json()
        } else {
          setError(true)
        }
      })
      .then((data) => setStudents(data))
      .catch(() => setError(true))
  }, [])

  if (error) {
    return <mark>Error</mark>
  }

  if (students.length <= 0) {
    return <div aria-busy="true"></div>
  }

  return <StudentList students={students} />
}

export default Home
