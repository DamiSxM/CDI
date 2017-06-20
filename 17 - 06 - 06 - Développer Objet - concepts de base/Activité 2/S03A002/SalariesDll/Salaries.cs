using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalariesDll
{
    public class Salaries : List<Salarie>
    {
        public new void Add(Salarie s)
        {
            bool contain = false;
            foreach (Salarie item in this) if (item.Equals(s)) contain = true;
            if (!contain) base.Add(s);
        }
        public Salarie Find(string m)
        {
            foreach (Salarie s in this) if (s.Matricule == m) return s;
            return null;
            //return Find(x => x.Matricule.Contains(matricule));
        }
        public void supprimerSalarie(string m)
        {
            this.Remove(this.Find(m));
        }
        public void supprimerSalarie(Salarie s)
        {
            this.Remove(s);
        }
    }
}
