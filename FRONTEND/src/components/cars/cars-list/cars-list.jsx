import axios from "axios"
import { useEffect, useState } from "react"
import { useNavigate } from "react-router"

const CarsList = () => {
  const [data, setData] = useState(null)
  const navigate = useNavigate()
  useEffect(() => {
    const jwt = JSON.parse(localStorage.getItem("jwt"))
    if (!jwt) {
      navigate("/login")
    }
    axios
      .get("http://127.0.0.1:3001/bf_voiture/cars", {
        headers: {
          Authorization: `Bearer ${jwt}`,
        },
      })
      .then((response) => {
        const res = response.data
        setData(res)
      })
      .catch((response) => {
        console.log(response)
      })
  }, [])

  return <>{data && data.map((c) => <h3 key={c.id}>{c.make}</h3>)}</>
}

export default CarsList
