//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MaeTerra.Infraestrutura.EDMX
{
    using System;
    using System.Collections.Generic;
    
    public partial class PedidoMateriaPrima
    {
        public int codPedidoMateriaPrima { get; set; }
        public int codPedido { get; set; }
        public Nullable<int> codMateriaPrima { get; set; }
        public Nullable<decimal> precoMaximo { get; set; }
        public Nullable<System.DateTime> dataLimite { get; set; }
    
        public virtual MateriaPrima MateriaPrima { get; set; }
    }
}
