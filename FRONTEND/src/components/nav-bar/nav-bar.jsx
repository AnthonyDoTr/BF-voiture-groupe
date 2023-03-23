import { NavLink } from 'react-router-dom';
import style from './nav-bar.module.css';

const CustomLink = ({ to, name }) => (
    <NavLink
        to={to}
        className={({ isActive }) => isActive ? style.active : undefined}
    >
        {/* ↓ Possibilité d'avoir un rendu dynamique avec la variable "isActive" */}
        {({ isActive }) => !isActive ? (
            <span>{name}</span>
        ) : (
            <span>&gt; {name} &lt;</span>
        )}
    </NavLink>
);




const NavBar = () => {
    return (<nav className={style.main}>
        <ul>
            <li>
                <CustomLink to='/' name='Home' />
            </li>
            <li>
                <CustomLink to='/cars' name='Cars' />
            </li>
            <li>
                <CustomLink to='/customers' name='Customers' />
            </li>
            <li>
                <CustomLink to='/sales' name='Sales' />
            </li>
        </ul>
    </nav>
    )
}

export default NavBar;