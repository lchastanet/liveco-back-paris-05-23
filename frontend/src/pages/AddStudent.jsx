import { useState } from "react"
import { useNavigate } from "react-router-dom"

function AddStudent() {
  const [student, setStudent] = useState({
    last_name: "",
    first_name: "",
    email: "",
  })

  const navigate = useNavigate()

  const handleAdd = () => {
    fetch(`http://localhost:8000/student`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(student),
    }).then((res) => {
      if (res.status === 201) {
        navigate("/")
      } else {
        console.error("Erreur")
      }
    })
  }

  return (
    <form>
      <div className="grid">
        <label htmlFor="firstname">
          First name
          <input
            type="text"
            id="firstname"
            name="firstname"
            placeholder="First name"
            value={student.first_name}
            onChange={(e) =>
              setStudent({ ...student, first_name: e.target.value })
            }
            required
          />
        </label>

        <label htmlFor="lastname">
          Last name
          <input
            type="text"
            id="lastname"
            name="lastname"
            placeholder="Last name"
            value={student.last_name}
            onChange={(e) =>
              setStudent({ ...student, last_name: e.target.value })
            }
            required
          />
        </label>
      </div>

      <label htmlFor="email">Email address</label>
      <input
        type="email"
        id="email"
        name="email"
        placeholder="Email address"
        value={student.email}
        onChange={(e) => setStudent({ ...student, email: e.target.value })}
        required
      />

      <a className="margin" href="#" role="button" onClick={handleAdd}>
        Add
      </a>
    </form>
  )
}

export default AddStudent
