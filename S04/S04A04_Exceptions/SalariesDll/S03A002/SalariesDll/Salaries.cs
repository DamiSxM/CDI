using System;
using System.Collections.Generic;
//using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System.Runtime.Serialization;
using System.Xml.Serialization;
using System.Xml;
using Newtonsoft.Json;
using System.Globalization;

namespace SalariesDll
{
    [Serializable()]
    [XmlInclude(typeof(Commercial))]
    public class Salaries : List<Salarie>
    {
        #region Attributs
        static string fileNameTxt = "Salaries.csv";
        static string fileNameBinary = "Salaries.dat";
        static string fileNameXml = "Salaries.xml";
        static string fileNameJson = "Salaries.js";
        #endregion

        public new void Add(Salarie s)
        {
            if(Find(s.Matricule) == null) base.Add(s);
            else throw new SalarieExeption(Messages.Salarie_001, string.Format(CultureInfo.CurrentCulture, Messages.Salarie_001, s.Matricule));
        }

        public Salarie Find(string m)
        {
            if (Count > 0)
            {
                foreach (Salarie s in this) if (s.Matricule == m) return s;
            }
            return null;
        }
        public void supprimerSalarie(string m)
        {
            Remove(Find(m));

        }
        public void supprimerSalarie(Salarie s)
        {
            Remove(s);
        }

        #region Persistance : Txt
        string ReadTxt(string file)
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
        public void LoadTxt()
        {
            string txt = ReadTxt(fileNameTxt);
            string[] lines = txt.Split(new string[] { "\n" }, StringSplitOptions.RemoveEmptyEntries);
            foreach (string item in lines)
            {
                string[] champs = item.Split(new char[] { ';' });
                if (champs.Length == 7)
                {
                    Salarie s = new Salarie()
                    {
                        Matricule = champs[0],
                        Nom = champs[1],
                        Prenom = champs[2],
                        SalaireBrut = decimal.Parse(champs[3]),
                        TauxCS = decimal.Parse(champs[4]),
                        DateNaissance = DateTime.Parse(champs[6])
                    };
                    if (Salarie.isValid(s)) this.Add(s);
                }
                else
                {
                    Commercial c = new Commercial()
                    {
                        Matricule = champs[0],
                        Nom = champs[1],
                        Prenom = champs[2],
                        SalaireBrut = decimal.Parse(champs[3]),
                        TauxCS = decimal.Parse(champs[4]),
                        DateNaissance = DateTime.Parse(champs[6]),
                        ChiffreAffaire = decimal.Parse(champs[7]),
                        Commission = decimal.Parse(champs[8])
                    };
                    if (Commercial.isValid(c)) this.Add(c);
                }
            }
        }
        public void SaveTxt()
        {
            if (File.Exists(fileNameTxt)) File.Delete(fileNameTxt);

            FileStream fs = new FileStream(fileNameTxt, FileMode.Create, FileAccess.Write);
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
        #endregion

        #region Persistance : Bin
        public void SaveBinary()
        {
            using (FileStream fs = new FileStream(fileNameBinary, FileMode.Create))
            {
                BinaryFormatter bf = new BinaryFormatter();
                bf.Serialize(fs, this);
                fs.Close();
            }
        }
        public void LoadBinary()
        {
            using (FileStream fs = new FileStream(fileNameBinary, FileMode.Open))
            {
                BinaryFormatter bf = new BinaryFormatter();
                this.AddRange(bf.Deserialize(fs) as Salaries);
                fs.Close();
            }
        }
        #endregion

        #region Persistance : Xml
        public void SaveXml()
        {
            using (FileStream fs = new FileStream(fileNameXml, FileMode.Create, FileAccess.Write))
            {
                XmlTextWriter xtw = new XmlTextWriter(fs, Encoding.UTF8);
                XmlSerializer xs = new XmlSerializer(this.GetType());

                xs.Serialize(xtw, this);

                fs.Close();
            }
        }
        public void LoadXml()
        {
            using (FileStream fs = new FileStream(fileNameXml, FileMode.Open, FileAccess.Read))
            {
                XmlTextReader xtr = new XmlTextReader(fs);
                XmlSerializer xs = new XmlSerializer(this.GetType());

                base.AddRange(xs.Deserialize(xtr) as Salaries);

                fs.Close();
            }
        }
        #endregion

        #region Persistance : Json
        public void SaveJson()
        {
            string json = JsonConvert.SerializeObject(this);

            if (File.Exists(fileNameJson)) File.Delete(fileNameJson);

            FileStream fs = new FileStream(fileNameJson, FileMode.Create, FileAccess.Write);
            using (StreamWriter sw = new StreamWriter(fs, Encoding.UTF8))
            {
                sw.WriteLine(json);
                sw.Close();
            }
            fs.Close();
        }
        public void LoadJson()
        {
            string txt = null;
            FileStream fs = new FileStream(fileNameJson, FileMode.Open, FileAccess.Read);
            using (StreamReader sr = new StreamReader(fs, Encoding.UTF8))
            {
                txt = sr.ReadToEnd();
                sr.Close();
            }
            fs.Close();
            this.AddRange(JsonConvert.DeserializeObject<Salaries>(txt));
        }
        #endregion
    }
}
