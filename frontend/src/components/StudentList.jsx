/* eslint react/prop-types: 0 */
import { useNavigate } from "react-router-dom"

function StudentList({ students }) {
  const navigate = useNavigate()

  return (
    <table>
      <thead>
        <tr>
          <th scope="col">Id</th>
          <th scope="col">Firstname</th>
          <th scope="col">Lastname</th>
          <th scope="col">Email</th>
        </tr>
      </thead>
      <tbody>
        {students.map((student) => (
          <tr
            key={student.id}
            onClick={() => navigate(`/student-details/${student.id}`)}
          >
            <th scope="row">{student.id}</th>
            <td>{student.first_name}</td>
            <td>{student.last_name}</td>
            <td>{student.email}</td>
          </tr>
        ))}
      </tbody>
    </table>
  )
}

export default StudentList
