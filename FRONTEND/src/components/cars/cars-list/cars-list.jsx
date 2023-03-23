import axios from "axios";
import { useEffect, useState } from "react";

const CarsList = () => {

    const [data, setData] = useState(null);

    useEffect(() => {
        axios.get('http://127.0.0.1:3001/bf_voiture/cars'
    ).then(response => {
        const res = response.data;
        setData(res);
    }).catch(response => {
        console.log(response);
    })
    }, [])

    

    return (
        <>
        {data && data.map(
            (c) => <h3 key={c.id}>{c.make}</h3>
        )}
        </>
    )

}

export default CarsList;