using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization;

namespace SalariesDll
{
    public class SalariesH : HashSet<Salarie>
    {
        static string fileName = "Salaries.csv";
        //public new void Add(Salarie s)
        //{
        //    if (!isExists(s)) base.Add(s);
        //}
        public Salarie Find(string m)
        {
            foreach (Salarie s in this) if (s.Matricule == m) return s;
            return null;
        }
        public bool isExists(Salarie s)
        {
            if (s != null)
            {
                if (this.Contains(s)) return true;
            }
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

        #region Persistance : Text
        public void SaveText()
        {
            Write(fileName);
        }
        public void LoadText()
        {
            string txt = Read(fileName);
            string[] lines = txt.Split(new string[] { "\n" }, StringSplitOptions.RemoveEmptyEntries);
            foreach (string item in lines)
            {
                string[] champs = item.Split(new char[] { ';' });

                if (champs.Length == 7)
                {
                    this.Add(new Salarie()
                    {
                        Matricule = champs[0],
                        Nom = champs[1],
                        Prenom = champs[2],
                        SalaireBrut = decimal.Parse(champs[3]),
                        TauxCS = decimal.Parse(champs[4]),
                        DateNaissance = DateTime.Parse(champs[6])
                    });
                }
                else
                {
                    this.Add(new Commercial()
                    {
                        Matricule = champs[0],
                        Nom = champs[1],
                        Prenom = champs[2],
                        SalaireBrut = decimal.Parse(champs[3]),
                        TauxCS = decimal.Parse(champs[4]),
                        DateNaissance = DateTime.Parse(champs[6]),
                        ChiffreAffaire = decimal.Parse(champs[7]),
                        Commission = decimal.Parse(champs[8])
                    });
                }
            }
        }
        public void Write(string file)
        {
            if (File.Exists(file)) File.Delete(file);

            FileStream fs = new FileStream(file, FileMode.Create, FileAccess.Write);
            using (StreamWriter sw = new StreamWriter(fs, Encoding.UTF8))
            {
                foreach (var s in this)
                {
                    if (s.GetType() == typeof(Commercial))
                    {
                        sw.WriteLine(((Commercial)s).ToString());
                    }
                    else
                    {
                        sw.WriteLine(s.ToString());
                    }
                }
                sw.Close();
            }
            fs.Close();
        }

        public string Read(string file)
        {
            string txt = null;
            FileStream fs = new FileStream(file, FileMode.Open, FileAccess.Read);
            using (StreamReader sr = new StreamReader(fs, Encoding.UTF8))
            {
                txt = sr.ReadToEnd();
                sr.Close();
            }
            fs.Close();
            return txt;
        }
        #endregion
    }
}
