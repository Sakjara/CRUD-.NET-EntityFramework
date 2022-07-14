using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelo
{
    public class Persona
    {
        private string rut;
        private string nombre;
        private DateTime fechaNacimiento;
        private Sex sexo;
        private EstadoCivil estado;
        private string profesion;
        private string telefono;
        private string direccion;

        public string Direccion
        {
            get { return direccion; }
            set { direccion = value; }
        }


        public string Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }


        public string Profesion
        {
            get { return profesion; }
            set { profesion = value; }
        }


        public EstadoCivil Estado
        {
            get { return estado; }
            set { estado = value; }
        }


        public Sex Sexo
        {
            get { return sexo; }
            set { sexo = value; }
        }


        public DateTime FechaNacimiento
        {
            get { return fechaNacimiento; }
            set { fechaNacimiento = value; }
        }


        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }


        public string Rut
        {
            get { return rut; }
            set { rut = value; }
        }

        public override string ToString()
        {
            return string.Format("Rut: {0}, Nombre: {1}", Rut, Nombre);
        }

    }
}
