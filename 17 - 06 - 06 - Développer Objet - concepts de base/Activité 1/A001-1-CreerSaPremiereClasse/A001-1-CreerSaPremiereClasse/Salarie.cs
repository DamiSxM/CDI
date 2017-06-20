using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CreerSaPremiereClasse
{
    class Salarie
    {
        string _matricule = string.Empty;
        string _nom = string.Empty;
        string _prenom = string.Empty;
        int _salaireBrut = 0;
        float _tauxCS = 0;
        DateTime _DateNaissance;

        public string Matricule
        {
            get { return _matricule; }
            set
            {
                if (value.Length == 7)
                {

                    if(Char.IsLetter(value[0]) &&
                        Char.IsLetter(value[1]) &&
                        Char.IsDigit(value[2]) &&
                        Char.IsDigit(value[3]) &&
                        Char.IsDigit(value[4]) &&
                        Char.IsLetter(value[5]) &&
                        Char.IsLetter(value[6]))
                    {
                        _matricule = value;
                    }
                }
            }
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
                        if (Char.IsDigit(c))
                        {
                            block = false;
                        }
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

        public float SalaireNet
        {
            get { return SalaireBrut / (1 + TauxCS); }
        }

        public int SalaireBrut
        {
            get { return _salaireBrut; }
            set
            {
                _salaireBrut = value;
            }
        }

        public float TauxCS
        {
            get { return _tauxCS; }
            set
            {
                if (value > 0 && value >= 0.6)
                {
                    _tauxCS = value;
                }
            }
        }

        public DateTime DateNaissance
        {
            get { return _DateNaissance; }
            set
            {
                if (DateTime.Compare(DateTime.MinValue, value) < 0 && DateTime.Compare(DateTime.Now, value) > 0)
                {
                    _DateNaissance = value;
                }
            }
        }
    }
}
