import { useState } from "react";
import reactLogo from "./assets/react.svg";
import viteLogo from "/vite.svg";
import "./App.css";
import appRoute from "./routes/app.route";
import { useRoutes } from "react-router-dom";
import NavBar from "./components/nav-bar/nav-bar";

function App() {
  const [count, setCount] = useState(0);
  const routes = useRoutes(appRoute);

  return (
    <div>
      <NavBar />
      <main className="App">{routes}</main>
    </div>
  );
}

export default App;
