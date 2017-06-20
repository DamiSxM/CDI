
package pkg3_chaines;

import java.awt.GridLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener; 
import javax.swing.BorderFactory;
import javax.swing.JRadioButton;

 
public class Fenetre extends JFrame implements ActionListener{
    JTextField _txt = new JTextField();
    JTextField _txtP1 = new JTextField();
    JTextField _txtP2 = new JTextField();
    JTextField _txtResult = new JTextField();
    JRadioButton _rad1 = new JRadioButton("Nombre occurences 1");
    JRadioButton _rad2 = new JRadioButton("Remplacer toutes les occurences de 1 par 2");
    JRadioButton _rad3 = new JRadioButton("Remplacer 1ère occurence 1 par 2");
    JRadioButton _rad4 = new JRadioButton("Remplacer dernière occurence 1 par 2");
    JButton _btn = new JButton("Jouer");
    
  public Fenetre(){
    this.setTitle("Ma première fenêtre Java");
    this.setSize(400, 500);
    this.setLocationRelativeTo(null);
    this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    
    this.setLayout(new GridLayout(3, 1));
    
    JPanel saisies = new JPanel();
    saisies.setLayout(new GridLayout(4, 2));
    
    saisies.add(new JLabel("Saisissez une chaine :"));
    saisies.add(_txt);
    saisies.add(new JLabel("Portion de chaîne 1 :"));
    saisies.add(_txtP1);
    saisies.add(new JLabel("Portion de remplacement 2 :"));
    saisies.add(_txtP2);
    saisies.add(new JLabel("Résultat :"));
    saisies.add(_txtResult);
    
    
    JPanel choix = new JPanel();
    choix.setBorder(BorderFactory.createTitledBorder("Faites votre choix :"));
    _rad1.addActionListener(this);
    choix.add(_rad1);
    _rad2.addActionListener(this);
    choix.add(_rad2);
    _rad3.addActionListener(this);
    choix.add(_rad3);
    _rad4.addActionListener(this);
    choix.add(_rad4);
    
    this.add(saisies);
    this.add(choix);
    
    _btn.addActionListener(this);
    this.add(_btn);
    this.setVisible(true);
  }
  
  public int compterOccurence(String o, String s){
      int res = 0;
      int pos = 0;
      while (pos != -1) {
          pos = o.indexOf(s, pos);
          if (pos!=-1) {
              res++;
              pos += s.length();
          }
      }
      return res;
  }
  
  public String remplacerOccurence(String o, String f, String t){
      if(o != "" && f != "" && t != "") return o.replace(f, t);
      return "";
  }
  
  public String remplacerFirst(String o, String f, String t){
          int pos = o.indexOf(f);
          if(pos != -1 || t != "") return o.substring(0, pos) + t + o.substring(pos + t.length());
          return "";
  }
  public String remplacerLast(String o, String f, String t){
          int pos = o.lastIndexOf(f);
          if(pos != -1 || t != "") return o.substring(0, pos) + t + o.substring(pos + t.length());
          return "";
  }
  
  public void actionPerformed(ActionEvent ae) {
      Object src = ae.getSource();
      if (src == _btn) {
          
          if(_rad1.isSelected()) _txtResult.setText(compterOccurence(_txt.getText(), _txtP1.getText())+"");
          else if(_rad2.isSelected()) _txtResult.setText(remplacerOccurence(_txt.getText(), _txtP1.getText(),  _txtP2.getText()));
          else if(_rad3.isSelected()) _txtResult.setText(remplacerFirst(_txt.getText(), _txtP1.getText(),  _txtP2.getText()));
          else if(_rad4.isSelected()) _txtResult.setText(remplacerLast(_txt.getText(), _txtP1.getText(),  _txtP2.getText()));
              
              
      }else if (src == _rad1){
          _rad2.setSelected(false);
          _rad3.setSelected(false);
          _rad4.setSelected(false);
      }else if (src == _rad2){
          _rad1.setSelected(false);
          _rad3.setSelected(false);
          _rad4.setSelected(false);
      }else if (src == _rad3){
          _rad1.setSelected(false);
          _rad2.setSelected(false);
          _rad4.setSelected(false);
      }else if (src == _rad4){
          _rad1.setSelected(false);
          _rad2.setSelected(false);
          _rad3.setSelected(false);
      }
  }
}
