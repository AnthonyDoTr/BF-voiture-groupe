import CarsListPage from "../pages/cars/cars-list.page";
import CarsPage from "../pages/cars/cars.page";
import CustomersPage from "../pages/customers/customers.page";
import NotFound from "../pages/errors/not-found.page";
import HomePage from "../pages/home/home.page";
import SalesPage from "../pages/sales/sales.page";

const appRoute = [
    {
        path: '',
        element: <HomePage />
    },
    {
        path:'cars',
        element : <CarsPage/>,
        children : [
            {
                index : true,
                element : <CarsListPage/>
            }
        ]
    },
    {
        path :'customers',
        element : <CustomersPage />
    },
    {
        path : 'sales',
        element : <SalesPage/>
    },
    {
        path : '*',
        element : <NotFound/>
    }
];

export default appRoute;
