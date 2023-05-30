import { Link } from "react-router-dom"

function Header() {
  return (
    <nav>
      <ul>
        <li>
          <Link to="/">
            <strong>Student manager</strong>
          </Link>
        </li>
      </ul>
    </nav>
  )
}

export default Header
