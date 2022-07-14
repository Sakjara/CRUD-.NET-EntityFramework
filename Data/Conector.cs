using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class Conector
    {
        private static MASTER357VEntities entidades;
        public static MASTER357VEntities Entidades
        {
            get
            {
                if(entidades == null)
                {
                    entidades = new MASTER357VEntities();
                }
                return entidades;
            }
        }

        private Conector() { }
    }
}
