using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalariesDll
{
    public class SalariesH : HashSet<Salarie>
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
            if (s != null) if (this.Contains(s)) return true;
            //foreach (Salarie item in this) if (s.GetHashCode() == item.GetHashCode()) return true;
            return false;
        }
        /// <summary>
        /// Supprime le Salarié daprès son matricule
        /// </summary>
        /// <param name="m">Matricule</param>
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
