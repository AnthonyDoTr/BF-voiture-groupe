import axios from "axios"
import { useState } from "react"
import { useNavigate } from "react-router"

const Login = () => {
  const [login, setLogin] = useState("")
  const [password, setPassword] = useState("")
  const navigate = useNavigate()

  const handleSubmit = (e) => {
    e.preventDefault()
    axios
      .post("http://127.0.0.1:3001/bf_voiture/auth/login", {
        login,
        password,
      })
      .then((response) => {
        const res = response.data
        localStorage.setItem("jwt", JSON.stringify(res.jwt))
        // const jwt = localStorage.getItem("jwt")
        // console.log(jwt)

        navigate("/")
      })
      .catch((error) => {
        console.log("user pas en db ")
      })
  }

  return (
    <form onSubmit={handleSubmit}>
      <input
        type="text"
        id="login"
        value={login}
        onChange={(e) => setLogin(e.target.value)}
      />
      <label htmlFor="login">Login</label>
      <input
        type="password"
        id="password"
        value={password}
        onChange={(e) => setPassword(e.target.value)}
      />
      <label htmlFor="password">Password</label>
      <button type="submit">Envoyer</button>
    </form>
  )
}

export default Login
