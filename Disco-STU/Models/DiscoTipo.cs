//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Disco_STU.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class DiscoTipo
    {
        public int Id { get; set; }
        public Nullable<int> IdDisco { get; set; }
        public Nullable<int> IdTipo { get; set; }
    
        public virtual Disco Disco { get; set; }
        public virtual Tipo Tipo { get; set; }
    }
}
