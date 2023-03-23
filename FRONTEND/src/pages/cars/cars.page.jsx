import { Outlet } from "react-router";

const CarsPage = () => {
    return (
      <>
        <h1>Cars</h1>
        <Outlet/>
      </>
    );
  };
  
  export default CarsPage;
  