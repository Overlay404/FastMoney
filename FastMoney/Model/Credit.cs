//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FastMoney.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Credit
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Credit()
        {
            this.Failure_Schedule = new HashSet<Failure_Schedule>();
            this.Request = new HashSet<Request>();
        }
    
        public int id { get; set; }
        public Nullable<decimal> totalAmount { get; set; }
        public Nullable<System.DateTime> dateOfIssue { get; set; }
        public Nullable<System.DateTime> expirationDate { get; set; }
        public Nullable<decimal> rate { get; set; }
        public Nullable<int> UserId { get; set; }
        public string type { get; set; }
        public string status { get; set; }
        public Nullable<int> CardId { get; set; }
    
        public virtual User User { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Failure_Schedule> Failure_Schedule { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Request> Request { get; set; }
        public virtual Card Card { get; set; }
    }
}
