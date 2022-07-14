using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Registros
    {
        private static List<Modelo.Persona> personas;
        public static List<Modelo.Persona> Personas
        {
            get
            {
                if (personas == null)
                {
                    personas = new List<Modelo.Persona>();
                }
                return personas;
            }
        }

        public static List<Modelo.Persona> MostrarPersonas()
        {  
            if(personas == null)
            {
                personas = new List<Modelo.Persona>();
            }
            if (personas.Count == 0)
            {
                Modelo.Persona persona = new Modelo.Persona()
                {
                    Direccion = "Los Espinos 3664",
                    Estado = Modelo.EstadoCivil.Soltero,
                    FechaNacimiento = new DateTime(1989, 09, 6),
                    Nombre = "Isaac Jara",
                    Profesion = "Admin",
                    Rut = "11.111.111-1",
                    Sexo = Modelo.Sex.Masculino,
                    Telefono = "+56947620513"
                };
                personas.Add(persona);
            }
            return personas;    
        }

    }
}
