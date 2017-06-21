using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;

namespace SalariesDll
{

    [Serializable()]
    public class Salarie
    {
        #region Attributs
        static int _compteurInstances = 0;

        string _matricule = string.Empty;
        string _nom = string.Empty;
        string _prenom = string.Empty;
        decimal _salaireBrut = 0;
        decimal _tauxCS = 0;
        DateTime _dateNaissance = DateTime.MinValue;
        #endregion

        #region [Con/De]structeurs
        public Salarie()
        {
            _compteurInstances++;
        }
        public Salarie(string nom, string prenom, string matricule)
        {
            this.Nom = nom;
            this.Prenom = prenom;
            this.Matricule = matricule;
        }
        public Salarie(Salarie s)
        {
            this._matricule = s.Matricule;
            this._nom = s.Nom;
            this._prenom = s.Prenom;
            this._salaireBrut = s.SalaireBrut;
            this._tauxCS = s.TauxCS;
            this._dateNaissance = s.DateNaissance;
        }
        ~Salarie()
        {
            _compteurInstances--;
        }
        #endregion

        #region Overrides
        /*public bool Equals(Salarie s)
        {
            //return _matricule == s._matricule;
            return base.Equals(s);
        }*/
        public override bool Equals(object o)
        {
            if (o == null) return false;
            Salarie s = o as Salarie;
            return _matricule == s._matricule;
        }
        public override string ToString()
        {
            /*return "Matricule : " + _matricule + "\n" +
                   "Nom : " + _nom + "\n" +
                   "Prénom : " + _prenom + "\n" +
                   "Salaire brut : " + _salaireBrut.ToString() + "\n" +
                   "Taux de charges sociales : " + _tauxCS.ToString() + "\n" +
                   "Salaire net : " + SalaireNet + "\n" +
                   "Date de naissance : " + _dateNaissance.ToString();*/
            return _matricule + ";" +
                   _nom + ";" +
                   _prenom + ";" +
                   _salaireBrut.ToString() + ";" +
                   _tauxCS.ToString() + ";" +
                   SalaireNet + ";" +
                   _dateNaissance.ToString();
        }
        public override int GetHashCode()
        {
            return _matricule.GetHashCode();
        }
        #endregion

        #region Vérifications
        public static bool isValid(Salarie s)
        {
            if (s.Matricule != string.Empty &&
                s.Nom != string.Empty &&
                s.Prenom != string.Empty &&
                s.SalaireBrut != 0 &&
                s.TauxCS != 0
                && s.DateNaissance != DateTime.MinValue)
            {
                return true;
            }
            return false;
        }
        public static bool isMatricule_OK(string m)
        {
            if (m.Length == 7 &&
                Char.IsDigit(m, 0) &&
                Char.IsDigit(m, 1) &&
                Char.IsLetter(m, 2) &&
                Char.IsLetter(m, 3) &&
                Char.IsLetter(m, 4) &&
                Char.IsDigit(m, 5) &&
                Char.IsDigit(m, 6))
            {
                return true;
            }
            return false;
        }
        public static bool isNom_OK(string n)
        {
            if (n.Length > 3 && n.Length <= 30)
            {
                foreach (char c in n)
                {
                    if (Char.IsDigit(c))
                    {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        public static bool isPrenom_OK(string pn)
        {
            if (pn.Length > 3 && pn.Length <= 30)
            {
                foreach (char c in pn)
                {
                    if (Char.IsDigit(c))
                    {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        public static bool isTauxCS_OK(double tx)
        {
            if (tx > 0 && tx <= 0.6)
            {
                return true;
            }
            return false;
        }
        public static bool isDateNaissance_Ok(DateTime d)
        {
            if (d.Year > 1900 && DateTime.Compare(DateTime.Now.AddYears(-15), d) > 0)
            {
                return true;
            }
            return false;
        }
        #endregion

        #region Assesseurs
        public string Matricule
        {
            get { return _matricule; }
            set
            {
                if (value.Length == 7 &&
                    Char.IsDigit(value, 0) &&
                    Char.IsDigit(value, 1) &&
                    Char.IsLetter(value, 2) &&
                    Char.IsLetter(value, 3) &&
                    Char.IsLetter(value, 4) &&
                    Char.IsDigit(value, 5) &&
                    Char.IsDigit(value, 6))
                {
                    _matricule = value;
                }
            }
        }
        public string Nom
        {
            get { return _nom; }
            set
            {
                if (value.Length >= 3 && value.Length <= 30)
                {
                    bool block = true;
                    foreach (char c in value)
                    {
                        if (Char.IsDigit(c)) block = false;
                    }
                    if (block) _nom = value;
                }
            }
        }
        public string Prenom
        {
            get { return _prenom; }
            set
            {
                if (value.Length >= 3 && value.Length <= 30)
                {
                    bool block = true;
                    foreach (char c in value)
                    {
                        if (Char.IsDigit(c))
                        {
                            block = false;
                        }
                    }
                    if (block) _prenom = value;
                }
            }
        }
        public virtual decimal SalaireNet
        {
            get { return _salaireBrut / (1 + _tauxCS); }
        }
        public decimal SalaireBrut
        {
            get { return _salaireBrut; }
            set
            {
                _salaireBrut = value;
            }
        }
        public decimal TauxCS
        {
            get { return _tauxCS; }
            set
            {
                if (value > 0 && value <= 0.6M)
                {
                    _tauxCS = value;
                }
            }
        }
        public DateTime DateNaissance
        {
            get { return _dateNaissance; }
            set
            {
                if (value.Year > 1900 && DateTime.Compare(DateTime.Now.AddYears(-15), value) > 0)
                {
                    _dateNaissance = value;
                }
            }
        }
        #endregion

        #region Statiques
        static public int CompteurInstances
        {
            get
            {
                return _compteurInstances;
            }
        }
        #endregion
    }
    public class SalarieExeption : ApplicationException, ISerializable
    {
        private string _idMessage = string.Empty;
        public string IdMessage
        {
            get { return _idMessage; }
            set { _idMessage = value; }
        }
        public SalarieExeption() : base() { }
        public SalarieExeption(string id, string message) : base(message)
        { _idMessage = id; }
        public SalarieExeption(string id, string message, Exception ie) : base(message, ie)
        { _idMessage = id; }
        protected SalarieExeption(SerializationInfo info, StreamingContext context) : base(info, context) { }
    }
}
