package test_javaapplication1;

import java.awt.Color;
import java.awt.GridLayout; 
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JSlider;

import java.awt.event.*;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
 
public class Fenetre extends JFrame {
    
    JPanel _damier = new JPanel();
    int _taille = 3;
    
  public Fenetre(){
    this.setTitle("Ma première fenêtre Java");
    this.setSize(400, 500);
    this.setLocationRelativeTo(null);
    this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);      
    
    
    this.setLayout(new GridLayout(1,2));
    
      ajouterDamier(_taille);
    
    JPanel controles = new JPanel();
    
    JSlider sld_select = new JSlider(JSlider.HORIZONTAL);
    sld_select.setMinimum(1);
    sld_select.setMaximum(50);
    sld_select.setValue(1);
    sld_select.addChangeListener(new ChangeListener() {
        @Override
        public void stateChanged(ChangeEvent ce) {
            _taille = sld_select.getValue();
            ajouterDamier(_taille);
        }
    });
    controles.add(sld_select);
    
    this.getContentPane().add(_damier);
    this.getContentPane().add(controles);
    this.setVisible(true);
  }
  
  void ajouterDamier(int taille){
      _damier.removeAll();
      _damier.setLayout(new GridLayout(taille,taille));
    
      for (int i = 0; i < taille; i++) {
          for (int j = 0; j < taille; j++) {
            JButton btn = new JButton();
            if((i+j)%2==0) btn.setBackground(Color.CYAN);
            else btn.setBackground(Color.GREEN);
            _damier.add(btn);
          }
      }
      _damier.revalidate();
      this.revalidate();
  }
}
