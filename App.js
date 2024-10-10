import './App.css';
import { BrowserRouter,Route,Routes } from 'react-router-dom';
import Shop from './Pages/Shop';
import Product from './Pages/Product';
import Cart from './Pages/Cart';
import LoginSingnup from './Pages/LoginSingnup';
import ShopCategory from './Pages/ShopCategory';
import Navbar from './Components/Navber/Navbar';

function App() {
  return (
      <BrowserRouter>
      <Navbar/>
        <Routes>
            <Route path='/' element={<Shop/>}/>
            <Route path='/mens'element={<ShopCategory category="mens"/>}/>
            <Route path='/womens'element={<ShopCategory category="women"/>}/>
            <Route path='/kids'element={<ShopCategory category="kid"/>}/>
            <Route path="/product" element={<Product/>} />
            <Route path=':productId' element={<Product/>}/>

            <Route path='/cart' element={<Cart/>}/>
            <Route path='/login' element={<LoginSingnup/>}/>
        </Routes>
      </BrowserRouter>
  );
}

export default App;
