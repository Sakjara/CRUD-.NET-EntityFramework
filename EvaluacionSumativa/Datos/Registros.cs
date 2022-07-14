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
                    Direccion = "Su casa 1234",
                    Estado = Modelo.EstadoCivil.Soltero,
                    FechaNacimiento = new DateTime(1999, 12, 1),
                    Nombre = "Juan Paredes",
                    Profesion = "Contador",
                    Rut = "11.111.111-1",
                    Sexo = Modelo.Sex.Masculino,
                    Telefono = "+56988855417"
                };
                personas.Add(persona);
            }
            return personas;    
        }

    }
}
