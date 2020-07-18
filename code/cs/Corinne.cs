using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReeseLibrary
{
    class Corinne : Person
    {
        public Corinne() {
            SetLaugh("He he heee");
        }
        void DrinkDC() {
            Console.WriteLine("Sip sip sip...");
            Console.WriteLine(GetLaugh());
        }

        void FixPlants() {
            Console.WriteLine(BeKind());
        }


    }
}
