<?php

require_once 'AccesoDatos.php';
require_once 'pedido.php';

class pedido
{
    public $id_comanda;
    public $id_producto;
    public $cantidad_producto;
    public $estado_pedido;
    public $hora_estimada;
    public $hora_listo;

        public function __construct() {}            
            
        ##=========================== REGION ABM

        public function Insertar()
        {
            $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
            $consulta =$objetoAccesoDato->RetornarConsulta("INSERT into comanda_detalles(id_comanda, id_producto, cantidad_producto, estado_pedido) 
            values (:id_comanda,:id_producto,:cantidad_producto,:estado_pedido)");

            $consulta->bindValue(':id_comanda', $this->id_comanda, PDO::PARAM_STR);
            $consulta->bindValue(':id_producto', $this->id_producto, PDO::PARAM_STR);
            $consulta->bindValue(':cantidad_producto', $this->cantidad_producto, PDO::PARAM_STR);
            $consulta->bindValue(':estado_pedido', $this->estado_pedido, PDO::PARAM_STR);            
            return $consulta->execute();		
       
        }
        
        public function CargarPedidoComanda($pPedidos,$pCantidades,$pId_comanda,$pHora_alta)
        {
            $obj = new stdclass();
            $obj->respuesta="Pedidos cargados";
            $obj->itsOk = True; 

            try
            {                   
                $estado_pedido = 1;
                foreach (array_combine($pPedidos, $pCantidades) as $pedido => $cantidad) {
                                      
                    $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
                    $consulta =$objetoAccesoDato->RetornarConsulta("INSERT into comanda_detalles 
                    (id_comanda, id_producto, cantidad_producto, estado_pedido, hora_alta) values (:id_comanda,:id_producto,:cantidad_producto,:estado_pedido,:hora_alta)");

                    $consulta->bindValue(':id_comanda', $pId_comanda, PDO::PARAM_STR);
                    $consulta->bindValue(':id_producto', $pedido, PDO::PARAM_STR);
                    $consulta->bindValue(':cantidad_producto', $cantidad, PDO::PARAM_STR);
                    $consulta->bindValue(':estado_pedido', $estado_pedido, PDO::PARAM_STR);            
                    $consulta->bindValue(':hora_alta', $pHora_alta, PDO::PARAM_STR);            
            
                    $consulta->execute();	  
                }                              
                
            }
            catch(Exception $e) 
            {               
                $obj->respuesta= $e->getMessage();
                $obj->itsOk = False;        

            }     
            return $obj;                    
        }
        
        public function InsertarBorrado()
        {
            $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
            $consulta =$objetoAccesoDato->RetornarConsulta("INSERT into pedidos_borrados 
            (id_comanda, id_producto, cantidad_producto) values (:id_comanda,:id_producto,:cantidad_producto)");
            $consulta->bindValue(':id_comanda', $this->id_comanda, PDO::PARAM_STR);
            $consulta->bindValue(':id_producto', $this->id_producto, PDO::PARAM_STR);
            $consulta->bindValue(':cantidad_producto', $this->cantidad_producto, PDO::PARAM_STR);                        
            $consulta->execute();		
        }
        
        public function BorrarPedido($pComanda,$pProducto)
        {
            $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
            $consulta =$objetoAccesoDato->RetornarConsulta("DELETE FROM `comanda_detalles` WHERE id_comanda = '$pComanda' AND id_producto = '$pProducto'");
            $consulta->execute();
            return $consulta->rowCount();
        }

        public function TomarPedido()
        {
            $vEstado = '2';
            $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
            $consulta =$objetoAccesoDato->RetornarConsulta("
                update comanda_detalles
                set                 
                estado_pedido = '$vEstado',
                comienzo_preparacion ='$this->comienzo_preparacion',
                id_empleado ='$this->id_empleado',
                hora_estimada ='$this->hora_estimada'
                WHERE id_comanda = '$this->id_comanda'
                AND id_producto = '$this->id_producto'");
           return $consulta->execute();
        }

        public function ModificarPedido()
        {           
            $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
            $consulta =$objetoAccesoDato->RetornarConsulta("
                update comanda_detalles
                set                 
                cantidad_producto = '$this->cantidad_producto'
                WHERE id_comanda = '$this->id_comanda'
                AND id_producto = '$this->id_producto'");
                $consulta->execute();
                return $consulta->rowCount();
        }

        public function FinalizarPedido()
        {         
            $vEstado = '3';
            $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
            $consulta =$objetoAccesoDato->RetornarConsulta("
                update comanda_detalles
                set                 
                estado_pedido = '$vEstado',
                hora_listo ='$this->hora_listo'
                WHERE id_comanda = '$this->id_comanda'
                AND id_producto = '$this->id_producto'");
           return $consulta->execute();
        }

        public function BorrarComandaPedidos($id)
        {
            $obj = new stdclass();
            $obj->respuesta="Se borraro pedidos vinculados a: ".$id;
            $obj->itsOk = True;

            try{
                $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
                $consulta =$objetoAccesoDato->RetornarConsulta("
                delete 
                from comanda_detalles 				
                WHERE id_comanda ='$id'");                
                $consulta->execute();
                $obj->respuesta="Se borraro pedidos vinculados a: ".$id;
            }
            catch(Exception $e) 
            {            
                $obj->respuesta = $e->getMessage();
                $obj->itsOk = FALSE;
            }           
            return $obj;
        }

        ##=========================== REGION CONSULTAS
     
        public function TraerPrecios($pPedidos,$pCantidades)
        {
            $obj = new stdclass();
            $obj->respuesta="Búsqueda correcta";
            $obj->itsOk = True;
            $total = 0;
  
            foreach (array_combine($pPedidos, $pCantidades) as $pedido => $cantidad) {
                    
                $precio1 = 0;
                $precio2 = 0;
                //buscar precio por producto
                $precio1 = self::TraerPrecioPedido($pedido);
                // multiplicarlo por cantidad
                $precio2 = $precio1 * $cantidad;                
                //lo agrego a total
                $total = $total + $precio2;     
            } 
            return $total;  
        }

        public static function TraerPrecioPedido($pPedido)
        {
            $var = producto::TraerUno($pPedido);                      
            if($var != null)
            {
                $unProducto = new producto();
                $unProducto = $var[0];
                return $unProducto->precio;
            }
        }

        public static function TraerEliminados()
        {            
            $consulta = "SELECT * FROM `pedidos_borrados`";
            return AccesoDatos::ConsultaDatosAsociados($consulta);
        }

        public static function TraerUnPedido($pComanda,$pProducto)
        {            
            $consulta = "SELECT * FROM `comanda_detalles` WHERE `id_comanda`= '$pComanda' AND `id_producto` = '$pProducto'";
            return AccesoDatos::ConsultaClase($consulta, "pedido");
        }
        
        public static function TraerPedidosPorComandaNombres($pComanda)
        {  
            $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
            $consulta = "SELECT  comanda_detalles.id_comanda,
            comanda_detalles.id_producto, comanda_detalles.cantidad_producto, productos.nombre_producto 
            FROM comanda_detalles,productos 
            WHERE comanda_detalles.id_producto = productos.id_producto 
            AND comanda_detalles.id_comanda = '$pComanda'";            
            
            return AccesoDatos::ConsultaDatosAsociados($consulta);
        }
        
        public static function TraerPedidosPorComanda($pComanda)
        {             
            $consulta = "SELECT * FROM `comanda_detalles` WHERE `id_comanda`= '$pComanda'";
            return AccesoDatos::ConsultaDatosAsociados($consulta);
        }
        
        public static function TraerTodosLosPedidos()
        {
            $consulta = "SELECT  comandas.id_mozo, comanda_detalles.id_comanda,
            comanda_detalles.id_producto, comanda_detalles.cantidad_producto,comanda_detalles.estado_pedido,
            comanda_detalles.hora_alta, comanda_detalles.id_empleado, productos.nombre_producto, comanda_detalles.hora_estimada
            FROM comandas, comanda_detalles,productos 
            WHERE comandas.id_comanda = comanda_detalles.id_comanda
            AND comanda_detalles.id_producto = productos.id_producto";
            
            return AccesoDatos::ConsultaDatosAsociados($consulta);
        }

        public static function TraerTodosLosPedidosPorIdMozo($id_mozo)
        {
            $consulta = "SELECT  comandas.id_comanda, comandas.id_mozo, comanda_detalles.id_comanda,
            comanda_detalles.id_producto, comanda_detalles.cantidad_producto,comanda_detalles.estado_pedido,
            comanda_detalles.hora_alta, productos.nombre_producto, comanda_detalles.hora_estimada
            FROM comandas, comanda_detalles,productos 
            WHERE comandas.id_mozo = '$id_mozo'
            AND comandas.id_comanda = comanda_detalles.id_comanda
            AND comanda_detalles.id_producto = productos.id_producto";
            
            return AccesoDatos::ConsultaDatosAsociados($consulta);
        }

        public static function TraerTiempoPedido($pId_comanda)
        {             
            $consulta = "SELECT * FROM `comanda_detalles`  WHERE `id_comanda`= '$pId_comanda'";
            return AccesoDatos::ConsultaDatosAsociados($consulta);
        }

        public static function TraerTodosLosPedidosPendientes()
        {
            $consulta = "SELECT  comanda_detalles.id_comanda,
            comanda_detalles.id_producto, comanda_detalles.cantidad_producto,comanda_detalles.estado_pedido,
            comanda_detalles.hora_alta, productos.nombre_producto, comanda_detalles.hora_estimada
            FROM comanda_detalles,productos 
            WHERE comanda_detalles.id_producto = productos.id_producto 
            AND comanda_detalles.estado_pedido = 1"; 
            
            return AccesoDatos::ConsultaDatosAsociados($consulta);
        }

        public static function TraerTodosLosPedidosPendientesSector($pSector)
        {             
            $consulta = "SELECT * FROM `comanda_detalles` INNER JOIN `productos` ON comanda_detalles.id_producto = productos.id_producto WHERE `id_cocina` = '$pSector' AND comanda_detalles.estado_pedido=1";
            return AccesoDatos::ConsultaDatosAsociados($consulta);
        }

                
        public static function TraerPedidosDemorados()
        {             
            $consulta = "SELECT * FROM `comanda_detalles` WHERE hora_estimada < hora_listo";
            return AccesoDatos::ConsultaDatosAsociados($consulta);
        }


        public static function TraerPedidoPendiente($vId_comanda,$vId_producto){
        
            $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
            $consulta =$objetoAccesoDato->RetornarConsulta("SELECT id_empleado FROM `comanda_detalles` WHERE  `id_comanda` = '$vId_comanda' AND id_producto = '$vId_producto' AND estado_pedido = 2");
            $consulta->execute();      
            $consulta->setFetchMode(PDO::FETCH_CLASS,"comanda"); 
            return $consulta->fetchAll();

        }
       
        public static function TraerCantidadProducto($pId)
        {
            $consulta = "SELECT sum(cantidad_producto) AS cantidad FROM `comanda_detalles` WHERE `id_producto`= '$pId'";
            return AccesoDatos::ConsultaDatosAsociados($consulta);
        }
  
        public static function TraerPedidosHechos()
        {                         
            $consulta = "SELECT DISTINCT id_producto FROM `comanda_detalles`";            
            return AccesoDatos::ConsultaDatosAsociados($consulta);
        }

        

                ##=========================== REGION DESECHADAS

        // public static function TraerPedidosPorMesa($pMesa)
        // {
        //     $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
        //     $consulta =$objetoAccesoDato->RetornarConsulta("SELECT * FROM `comanda_detalles` WHERE `id_comanda`= '$pComanda'");
        //     $consulta->execute();	
        //     $consulta->setFetchMode(PDO::FETCH_ASSOC);
        //     return $consulta->fetchAll();
        // }

        // public function InsertarUnPedido()
        // {
        //     $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
        //     $consulta =$objetoAccesoDato->RetornarConsulta("INSERT into comanda_detalles
        //     (id_comanda, id_producto, cantidad_producto) values (:id_comanda,:id_producto,:cantidad_producto)");

        //     $consulta->bindValue(':id_comanda', $this->id_comanda, PDO::PARAM_STR);
        //     $consulta->bindValue(':id_producto', $this->id_producto, PDO::PARAM_STR);
        //     $consulta->bindValue(':cantidad_producto', $this->cantidad_producto, PDO::PARAM_STR);
                        
        //     $consulta->execute();		
        //   //  return $objetoAccesoDato->RetornarUltimoIdInsertado();
        // }



        //         SELECT DISTINCT column1, column2, ...
        // FROM table_name;
        // public function ModificarUna()
        // {
        //     $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
        //     $consulta =$objetoAccesoDato->RetornarConsulta("
        //         update comandas
        //         set                 
        //         id_mesa ='$this->id_mesa',
        //         id_mozo ='$this->id_mozo',
        //         id_estado_pedido ='$this->id_estado_pedido',
        //         fecha_alta ='$this->fecha_alta',
        //         fecha_estipulada ='$this->fecha_estipulada',                
        //         fecha_entrega ='$this->fecha_entrega',
        //         total = '$this->total'
        //         WHERE id_comanda = '$this->id_comanda'");
        //    return $consulta->execute();

        // }

        // public function BorrarUna()
        // {
        //     $objetoAccesoDato = AccesoDatos::dameUnObjetoAcceso(); 
        //     $consulta =$objetoAccesoDato->RetornarConsulta("
        //     delete 
        //     from comandas 				
        //     WHERE id_comanda =:id_comanda");	
        //     $consulta->bindValue(':id_comanda',$this->id_comanda, PDO::PARAM_INT);		
        //     $consulta->execute();
        //     return $consulta->rowCount();
        // }
}

?>
