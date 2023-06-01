import { BrowserRouter, Routes, Route } from "react-router-dom"
import Header from "./components/Header"
import Home from "./pages/Home"
import StudentDetails from "./pages/StudentDetails"
import AddStudent from "./pages/AddStudent"

function App() {
  return (
    <BrowserRouter>
      <div className="container">
        <Header />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/student-details/:id" element={<StudentDetails />} />
          <Route path="/add-student" element={<AddStudent />} />
        </Routes>
      </div>
    </BrowserRouter>
  )
}

export default App
