using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SalariesDll;

namespace S04A001_2
{
    /*public class SalariesH : HashSet<Salarie>
    {
        public new void Add(Salarie s)
        {
            if (!isExists(s)) base.Add(s);
        }
        public Salarie Find(string m)
        {
            foreach (Salarie s in this) if (s.Matricule == m) return s;
            return null;
        }
        public bool isExists(Salarie s)
        {
            foreach (Salarie item in this) if (s.GetHashCode() == item.GetHashCode()) return true;
            return false;
        }
        public void supprimerSalarie(string m)
        {
            this.Remove(this.Find(m));
        }
        public void supprimerSalarie(Salarie s)
        {
            this.Remove(s);
        }
    }*/
}
