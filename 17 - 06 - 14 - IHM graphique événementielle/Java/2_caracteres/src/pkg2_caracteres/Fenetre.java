
package pkg2_caracteres;

import java.awt.Dimension;
import java.awt.GridLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JSpinner;
import javax.swing.JTextField;
import javax.swing.SpinnerModel;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener; 
import javax.swing.SpinnerNumberModel;
import javax.swing.event.CaretEvent;
import javax.swing.event.CaretListener;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;

 
public class Fenetre extends JFrame implements ActionListener{
    
    JTextField _txt = new JTextField();
    JSpinner _select = new JSpinner();
    JTextField _result = new JTextField();
    JButton _btn = new JButton("Catégorie du caractère");
    
  public Fenetre(){
    this.setTitle("Ma première fenêtre Java");
    this.setSize(400, 500);
    this.setLocationRelativeTo(null);
    this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    
    this.setLayout(new GridLayout(4, 2));
    
    this.add(new JLabel("Saisissez une chaine :"));
    
    _txt.addCaretListener(new CaretListener() {
        @Override
        public void caretUpdate(CaretEvent ce) {
            int max = _txt.getText().length()==0 ? 0 : _txt.getText().length()-1;
            _select.setModel(new SpinnerNumberModel(0, 0, max, 1));
          //_select.setValue(_txt.getText().length());
          _select.revalidate();
        }
    });
    this.add(_txt);
    
    this.add(new JLabel("Position de caractère :"));
    
    this.add(_select);
    
    this.add(new JLabel("Résultat :"));
    
    this.add(_result);
    
    _btn.addActionListener(this);
    this.add(_btn);
    
    this.setVisible(true);
  }
  
  public void actionPerformed(ActionEvent ae) {
      Object source = ae.getSource();
      if (source == _btn) {
          
        char c = _txt.getText().charAt(Integer.parseInt(_select.getValue().toString()));
        if(Character.isDigit(c)) _result.setText("Digit !");
        else if(Character.isLetter(c)) _result.setText("Letter !");
        else if(Character.isSpaceChar(c)) _result.setText("Space !");
        else _result.setText("Autre !");
        
      } else if(source == _txt){
          
          _select.setValue(_txt.getText().length());
          _select.revalidate();
          
      }
  }  
}
