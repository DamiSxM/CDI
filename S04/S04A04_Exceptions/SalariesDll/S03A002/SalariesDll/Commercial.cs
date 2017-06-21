using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SalariesDll
{
    public class Commercial : Salarie
    {
        #region Attributs
        decimal _chiffreAffaire;
        decimal _commission;
        #endregion

        #region Constructeurs
        public Commercial() : base() { }
        public Commercial(Commercial c) : base(c)
        {
            this.ChiffreAffaire = c.ChiffreAffaire;
            this.Commission = c.Commission;
        }
        #endregion

        #region Overrides
        static public bool isValid(Commercial c)
        {
            if (Salarie.isValid(c as Salarie) &&
                c.ChiffreAffaire != 0 &&
                c.Commission != 0)
            {
                return true;
            }
            return false;
        }
        public override string ToString()
        {
            /*return base.ToString() + "\n" +
                   "Chiffre d'affaire : " + _chiffreAffaire + "\n" +
                   "Commission : " + _commission;*/
            return base.ToString() + ";" +
                   _chiffreAffaire + ";" +
                   _commission;
        }
        #endregion

        #region Assesseurs
        public decimal ChiffreAffaire
        {
            get { return _chiffreAffaire; }
            set { _chiffreAffaire = value; }
        }
        public decimal Commission
        {
            get { return _commission; }
            set { _commission = value; }
        }
        public override decimal SalaireNet
        {
            get { return base.SalaireNet + (_chiffreAffaire * _commission); }
        }
        #endregion
    }
}
