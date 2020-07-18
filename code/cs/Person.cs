using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ReeseLibrary
{
    class Person : Soul
    {
        private string Laugh;
        public void SetLaugh(string NewLaugh) {
            Laugh = NewLaugh;
        }
        public string GetLaugh() { 
            return Laugh;
        }
    }
}
