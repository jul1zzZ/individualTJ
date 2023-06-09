//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TJ.Modules
{
    using System;
    using System.Collections.Generic;
    using System.IO;
    
    public partial class Shoo
    {
        public int ShoosID { get; set; }
        public int ShoesTypeID { get; set; }
        public string Article { get; set; }
        public int SizeID { get; set; }
        public int SeasonID { get; set; }
        public int ColorID { get; set; }
        public int MaterialID { get; set; }
        public string Photo { get; set; }
        public string ShoosName { get; set; }
        public double Price { get; set; }

        public string GetPhoto
        {
            get
            {
                return $@"{Directory.GetCurrentDirectory()}\Images\{Photo}";
            }
        }

        public virtual Color Color { get; set; }
        public virtual Material Material { get; set; }
        public virtual Season Season { get; set; }
        public virtual ShoeType ShoeType { get; set; }
        public virtual Size Size { get; set; }
    }
}
