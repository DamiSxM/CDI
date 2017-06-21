using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Drawing.Drawing2D;
using System.Windows.Input;

using System.Windows;

namespace testDrawing
{
    public partial class Form1 : Form
    {
        Timer _timer;
        Barre _barre = new Barre();
        Ball _ball;
        Vector _mouse;
        public Form1()
        {
            InitializeComponent();
            this.DoubleBuffered = true;
            this._ball = new Ball(this.Size.Width, this.Height);
            this._timer = new Timer();
            this._timer.Tick += new EventHandler(Timer_tick);
            _timer.Interval = 1;
            
        }
        private void Timer_tick(object sender, EventArgs e)
        {
            Vector wind = new Vector(0.02, 0);
            Vector gravity = new Vector(0, 0.1*this._ball.Mass);

            this._ball.ApplyForce(wind);
            this._ball.ApplyForce(gravity);

            this._ball.Update(this._mouse);
            this._ball.CheckEdges(this.Width, this.Height);
            this._ball.CheckBounce(this._barre.Rect);

            this.Refresh();
        }
        private void Form1_Paint(object sender, PaintEventArgs e)
        {
            this._barre.Draw(e.Graphics, _mouse, this.Width, this.Height);
            this._ball.Draw(e.Graphics);
        }
        private void Form1_MouseMove(object sender, MouseEventArgs e)
        {
            this._mouse = new Vector(e.Location.X, e.Location.Y);
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            _timer.Start();
        }
    }

    class Ball
    {
        Vector _position, _velocity, _acceleration;
        int _width, _height, _mass;

        public int Mass
        {
            get { return _mass; }
        }
        public Rectangle Rect
        {
            get { return new Rectangle((int)this._position.X, (int)this._position.Y, this._width, this._height); }
        }

        public Ball(int width, int height)
        {
            this._mass = 1;
            this._width = 25;
            this._height = 25;
            this._position = new Vector(width / 2, height / 2);
            this._velocity = new Vector(0, 0);
            this._acceleration = new Vector(0, 0);
        }
        public void Update(Vector mouse)
        {
            /*Vector dir = Vector.Subtract(mouse, this._position);
            dir.Normalize();
            dir *= 0.5;
            this._acceleration = dir;
            this._velocity += this._acceleration;
            if (this._velocity.X > 5) this._velocity.X = 5;
            if (this._velocity.Y > 5) this._velocity.Y = 5;
            //this._velocity.limt 5
            this._position += this._velocity;*/
            this._velocity += this._acceleration;
            this._position += this._velocity;
            this._acceleration *= 0;
        }
        public void ApplyForce(Vector force)
        {
            Vector f = Vector.Divide(force, this._mass);
            this._acceleration += f;
        }
        public void CheckEdges(int width, int height)
        {
            if (this._position.X > width - this._width)
            {
                this._position.X = width - this._width;
                this._velocity *= -1;
            }
            else if (this._position.X < 0)
            {
                this._position.X = 0;
                this._velocity *= -1;
            }

            if (this._position.Y > height - this._height)
            {
                this._position.Y = height - this._height;
                this._velocity *= -1;
            }
            else if (this._position.Y < 0)
            {
                this._position.Y = 0;
                this._velocity *= -1;
            }
        }

        public void CheckBounce(Rectangle rect)
        {
            if(this.Rect.Left > rect.Left & this.Rect.Right < rect.Right)
            {
                if (this.Rect.Bottom > rect.Top/* & this.Rect.Top < rect.Bottom*/)
                {
                    this._velocity *= -1;
                }
            }
        }

        public void Draw(Graphics g)
        {
            Brush b = new SolidBrush(Color.Blue);
            g.FillEllipse(b, (int)this._position.X, (int)this._position.Y, this._width, this._height);
            b.Dispose();
        }
    }

    public class Barre
    {
        Vector _position;
        double _width;
        double _height;
        public Barre()
        {
            this._width = 100;
            this._height = 10;
        }
        public void Draw(Graphics g, Vector mouse, int scrWidth, int scrHeight)
        {
            double posX = mouse.X - (this._width / 2);
            double posY = scrHeight - this._height - 50;//mouse.Y - (this._size.Height / 2);
            this._position = new Vector(posX, posY);

            Rectangle rec = new Rectangle((int)this._position.X, (int)this._position.Y, 100, 10);

            Brush b = new SolidBrush(Color.Blue);
            g.FillRectangle(b, rec);

            b.Dispose();
        }
        public Rectangle Rect
        {
            get { return new Rectangle((int)this._position.X, (int)this._position.Y, 100, 10); }
        }

    }
    /*public class Vector
    {
        #region Attributs
        int _x;
        int _y;
        #endregion

        #region Méthodes Statiques
        public static Vector sub(Vector v1, Vector v2)
        {
            return new Vector(v1.X - v2.X, v1.Y - v2.Y);
        }
        #endregion

        #region Méthodes
        public Vector sub(Vector v)
        {
            return new Vector(this.X - v.X, this.Y - v.Y);
        }
        #endregion

        #region Constructeurs
        public Vector() { }
        public Vector(int x, int y)
        {
            this.X = x;
            this.Y = y;
        }
        public Vector(Point p)
        {
            this.X = p.X;
            this.Y = p.Y;
        }
        #endregion

        #region Assesseurs
        public double Longueur
        {
            get { return Math.Sqrt(this.X * this.X + this.Y * this.Y); }
        }
        public double Norme
        {
            get
            {
                if (this.Longueur > 0)
                {
                    return 0.0;
                }
                return 0.0;
            }
        }
        public Point XY
        {
            set
            {
                this._x = value.X;
                this._y = value.Y;
            }
        }
        public int X
        {
            get { return _x; }
            set { this._x = value; }
        }
        public int Y
        {
            get { return _y; }
            set { this._y = value; }
        }
        #endregion
    }*/
}
