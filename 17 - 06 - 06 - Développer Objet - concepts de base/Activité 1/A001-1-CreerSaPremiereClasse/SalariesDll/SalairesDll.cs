using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalariesDll
{
    public class Salarie
    {
        string _matricule = string.Empty;
        string _nom = string.Empty;
        string _prenom = string.Empty;
        double _salaireBrut = 0;
        double _tauxCS = 0;
        DateTime _dateNaissance;

        static int _compteurInstances = 0;

        public Salarie()
        {
            _compteurInstances++;
        }
        public Salarie(string nom, string prenom, string matricule) : base()
        {
            this.Nom = nom;
            this.Prenom = prenom;
            this.Matricule = matricule;
        }

        public Salarie(Salarie s) : base()
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

        public string Matricule
        {
            get { return _matricule; }
            set
            {
                if (value.Length == 7 &&
                    Char.IsLetter(value, 0) &&
                    Char.IsLetter(value, 1) &&
                    Char.IsDigit(value, 2) &&
                    Char.IsDigit(value, 3) &&
                    Char.IsDigit(value, 4) &&
                    Char.IsLetter(value, 5) &&
                    Char.IsLetter(value, 6))
                {
                    _matricule = value;
                }
            }
        }
        public static bool isMatricule_OK(string m)
        {
            if (m.Length == 7 &&
                Char.IsLetter(m, 0) &&
                Char.IsLetter(m, 1) &&
                Char.IsDigit(m, 2) &&
                Char.IsDigit(m, 3) &&
                Char.IsDigit(m, 4) &&
                Char.IsLetter(m, 5) &&
                Char.IsLetter(m, 6))
            {
                return true;
            }
            return false;
        }

        public string Nom
        {
            get { return _nom; }
            set
            {
                if (value.Length > 3 && value.Length <= 30)
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

        public string Prenom
        {
            get { return _prenom; }
            set
            {
                if (value.Length > 3 && value.Length <= 30)
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

        public double SalaireNet
        {
            get { return SalaireBrut / (1.0 + TauxCS); }
        }

        public double SalaireBrut
        {
            get { return _salaireBrut; }
            set
            {
                _salaireBrut = value;
            }
        }
        /*public static bool isSalaireBrut(double salB)
        {
            return false;
        }*/

        public double TauxCS
        {
            get { return _tauxCS; }
            set
            {
                if (value > 0 && value <= 0.6)
                {
                    _tauxCS = value;
                }
            }
        }
        public static bool isTauxCS_OK(double tx)
        {
            if (tx > 0 && tx <= 0.6)
            {
                return true;
            }
            return false;
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
        public static bool isDateNaissance_Ok(DateTime d)
        {
            if (d.Year > 1900 && DateTime.Compare(DateTime.Now.AddYears(-15), d) > 0)
            {
                return true;
            }
            return false;
        }

        static public int CompteurInstances
        {
            get
            {
                return _compteurInstances;
            }
        }
    }
}
