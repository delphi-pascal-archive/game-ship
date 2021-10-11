unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    Image2: TImage;
    Timer2: TTimer;
    Image3: TImage;
    Timer3: TTimer;
    Image4: TImage;
    Timer4: TTimer;
    Image5: TImage;
    Timer5: TTimer;
    Image6: TImage;
    Label1: TLabel;
    Image7: TImage;
    Timer6: TTimer;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Timer7: TTimer;
    Timer8: TTimer;
    Label2: TLabel;
    Label3: TLabel;
    Timer9: TTimer;
    Label4: TLabel;
    Image13: TImage;
    Timer10: TTimer;
    Timer11: TTimer;
    Image14: TImage;
    Timer12: TTimer;
    Image15: TImage;
    Timer13: TTimer;
    Image16: TImage;
    Image17: TImage;
    Timer14: TTimer;
    Image18: TImage;
    Timer15: TTimer;
    Timer16: TTimer;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Label5: TLabel;
    Image22: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Image23: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer6Timer(Sender: TObject);
    procedure Timer8Timer(Sender: TObject);
    procedure Timer7Timer(Sender: TObject);
    procedure Timer9Timer(Sender: TObject);
    procedure Timer10Timer(Sender: TObject);
    procedure Timer11Timer(Sender: TObject);
    procedure Timer12Timer(Sender: TObject);
    procedure Timer13Timer(Sender: TObject);
    procedure Timer14Timer(Sender: TObject);
    procedure Timer15Timer(Sender: TObject);
    procedure Timer16Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,b,c,d,e,k,k1,k2,k3,x,r:integer;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
{Задаем движение кораблям №1}
image1.Left:=image1.Left+a;
if image1.Left>=Form1.Width-40 then a:=-5;
if image1.Left<=10 then a:=5;
{Попадание в кораблик}
if (image7.Left+image7.Width>=image1.Left)
and(image7.Left+image7.Width<=image1.Left+image1.Width)
and(image7.Top+image7.Height>=image1.Top)
and(image7.Top+image7.Height<image1.Top+image1.Height)
then
  begin
  Timer1.Enabled:=false;
  image1.Visible:=false;
  image7.Visible:=false;
  image8.Left:=image1.Left;
  image8.Visible:=true;
  timer9.Enabled:=true;
  Timer6.Enabled:=false;
  image13.Visible:=false;
  timer10.Enabled:=false;
  end;
{Пробуем запустить торпеду №1}
randomize;
  if image1.Left<=random(1000)then timer10.Enabled:=true;


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
a:=5; {Шаг для кораблика}
b:=5;
c:=5;
d:=5;
e:=5;
k:=1;
x:=0;
k2:=0;
k3:=0;
image7.Visible:=false;
image8.Visible:=false;
image9.Visible:=false;
image10.Visible:=false;
image11.Visible:=false;
image12.Visible:=false;
image13.Visible:=false;
image14.Visible:=false;
image15.Visible:=false;
image16.Visible:=false;
image17.Visible:=false;
image18.Visible:=false;
image22.Visible:=false;
image23.Visible:=false;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
{Задаем движение кораблю №2}
image2.Left:=image2.Left+b;
if image2.Left>=Form1.Width-40 then b:=-5;
if image2.Left<=10 then b:=5;

{Попадание в кораблик}
if (image7.Left+image7.Width/2>=image2.Left)
and(image7.Left+image7.Width/2<=image2.Left+image2.Width)
and(image7.Top+image7.Height/2>=image2.Top)
and(image7.Top+image7.Height/2<image2.Top+image2.Height)
then
  begin
  Timer2.Enabled:=false;
  image2.Visible:=false;
  image7.Visible:=false;
  image9.Left:=image2.Left;
  image9.Visible:=true;
  timer9.Enabled:=true;
  Timer6.Enabled:=false;
  timer12.Enabled:=false;
  image14.Visible:=false;
  end;
{Пробуем запустить торпеду №2}
randomize;
  if image2.Left<=random(1000)then timer12.Enabled:=true;

end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
{Движение кораблика №3}
image3.Left:=image3.Left+c;
if image3.Left>=Form1.Width-40 then c:=-5;
if image3.Left<=10 then c:=5;

{Попадание в кораблик}
if (image7.Left+image7.Width/2>=image3.Left)
and(image7.Left+image7.Width/2<=image3.Left+image3.Width)
and(image7.Top+image7.Height/2>=image3.Top)
and(image7.Top+image7.Height/2<image3.Top+image3.Height)
then
  begin
  Timer3.Enabled:=false;
  image3.Visible:=false;
  image7.Visible:=false;
  image10.Left:=image3.Left;
  image10.Visible:=true;
  timer9.Enabled:=true;
  Timer6.Enabled:=false;
  timer13.Enabled:=false;
  image16.Visible:=false;
  end;
{Пробуем запустить торпеду №3}
randomize;
  if image3.Left<=random(1000)then timer13.Enabled:=true;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
{движение корабля №4}
image4.Left:=image4.Left+d;
if image4.Left>=Form1.Width-40 then d:=-5;
if image4.Left<=10 then d:=5;

{Попадание в кораблик}
if (image7.Left+image7.Width/2>=image4.Left)
and(image7.Left+image7.Width/2<=image4.Left+image4.Width)
and(image7.Top+image7.Height/2>=image4.Top)
and(image7.Top+image7.Height/2<image4.Top+image4.Height)
then
  begin
  Timer4.Enabled:=false;
  image4.Visible:=false;
  image7.Visible:=false;
  image11.Left:=image4.Left;
  image11.Visible:=true;
  timer9.Enabled:=true;
  Timer6.Enabled:=false;
  timer14.Enabled:=false;
  image17.Visible:=false;
  end;
{Пробуем запустить торпеду №4}
randomize;
  if image4.Left<=random(1000)then timer14.Enabled:=true;
end;

procedure TForm1.Timer5Timer(Sender: TObject);
begin
{Движение кораблика №5}
image5.Left:=image5.Left+e;
if image5.Left>=Form1.Width-40 then e:=-5;
if image5.Left<=10 then e:=5;

{Попадание в кораблик}
if (image7.Left+image7.Width/2>=image5.Left)
and(image7.Left+image7.Width/2<=image5.Left+image5.Width)
and(image7.Top+image7.Height/2>=image5.Top)
and(image7.Top+image7.Height/2<image5.Top+image5.Height)
then
  begin
  Timer5.Enabled:=false;
  image5.Visible:=false;
  image7.Visible:=false;
  image12.Left:=image5.Left;
  image12.Visible:=true;
  timer9.Enabled:=true;
  Timer6.Enabled:=false;
  Timer15.Enabled:=false;
  image18.Visible:=false
  end;
{Пробуем запустить торпеду №5}
randomize;
  if image5.Left<=random(1000)then timer15.Enabled:=true;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

{Движение пушки.}
if key=37 then
            begin
            image6.Left:=image6.Left-15;

            end;
if key=39 then
             begin
             image6.Left:=image6.Left+15;

             end;
if image6.Left>=Form1.Width-30 then image6.Left:=1;
if image6.Left<=0 then image6.Left:=Form1.Width-31;
{Движение ядра по нажатию клавиши}

if (key=38)and(not Timer6.Enabled) then
                                     begin
                                     Timer6.Enabled:=true;
                                     image7.Top:=image6.Top;
                                     image7.Left:=image6.Left+12;
                                     image7.Visible:=true;
                                     end;

end;

procedure TForm1.Timer6Timer(Sender: TObject);
begin

{Движение ядра}
image7.Top:=image7.Top-7;
if image7.Top<=0 then
                    begin
                    Timer6.Enabled:=false;
                    image7.Visible:=false;
                    end;

end;

procedure TForm1.Timer7Timer(Sender: TObject);
begin
  {Когда подбиты все корабли показываем надпись "отлично" и включаем таймер8}
  if (image8.Visible)and(image9.Visible)and(image10.Visible)
and(image11.Visible)and(image12.Visible)
then
  begin
   image8.Visible:=false;
   image9.Visible:=false;
   image10.Visible:=false;
   image11.Visible:=false;
   image12.Visible:=false;
   Label2.Visible:=true;
   Label3.Visible:=true;
   timer8.Enabled:=true;
   Timer6.Enabled:=false;
   image13.Visible:=false;
   k3:=k3+1;
  end;
end;

procedure TForm1.Timer8Timer(Sender: TObject);
begin
{Проверяем подбиты ли все корабли и запускаем их снова}

if (not image8.Visible)and(not image9.Visible)and(not image10.Visible)
and(not image11.Visible)and(not image12.Visible)
then
   begin
       Label2.Visible:=false;
       Label3.Visible:=false;
       timer1.Enabled:=true;
       image1.Visible:=true;
       timer2.Enabled:=true;
       image2.Visible:=true;
       timer3.Enabled:=true;
       image3.Visible:=true;
       timer4.Enabled:=true;
       image4.Visible:=true;
       timer5.Enabled:=true;
       image5.Visible:=true;
       Timer6.Enabled:=false;

       image8.Visible:=false;
       image9.Visible:=false;
       image10.Visible:=false;
       image11.Visible:=false;
       image12.Visible:=false;
       image7.Top:=image6.Top;
       image13.Visible:=false;
       timer6.Enabled:=false;
  end;

end;



procedure TForm1.Timer9Timer(Sender: TObject);
begin
{Подсчет подбитых кораблей}
x:=x+1;
Label4.Caption:=IntToStr(x);
timer9.Enabled:=false;
end;

procedure TForm1.Timer10Timer(Sender: TObject);
begin
{Задаем движение торпеды}
image13.Visible:=true;
image13.Top:=image13.Top+10;
if image13.Top>=344 then
                      begin
                          timer10.Enabled:=false;
                          image13.Top:=image1.Top+10;
                          image13.Left:=image1.Left+10;
                      end;
if not image1.Visible then image13.Visible:=false;
{попадание в пушку}
if (image13.Left+image13.Width/2>=image6.Left)
and(image13.Left+image13.Width/2<=image6.Left+image6.Width)
and(image13.Top+image13.Height/2>=image6.Top)
and(image13.Top+image13.Height/2<image6.Top+image6.Height)
then
  begin
  image14.Left:=image6.Left;
  image14.Top:=image6.Top;
  image14.Visible:=true;
  image6.Visible:=false;
  Timer11.Enabled:=true;
  image13.Visible:=false;
  end;


end;

procedure TForm1.Timer11Timer(Sender: TObject);
begin
{анимация для пушки}
image14.Visible:=false;
image6.Visible:=true;
timer11.Enabled:=false;
end;

procedure TForm1.Timer12Timer(Sender: TObject);
begin
 {Задаем движение торпеды №2}
image15.Visible:=true;
image15.Top:=image15.Top+10;
if image15.Top>=344 then
                      begin
                          timer12.Enabled:=false;
                          image15.Top:=image2.Top+10;
                          image15.Left:=image2.Left+10;
                      end;
if not image2.Visible then image15.Visible:=false;
{попадание в пушку}
if (image15.Left+image15.Width/2>=image6.Left)
and(image15.Left+image15.Width/2<=image6.Left+image6.Width)
and(image15.Top+image15.Height/2>=image6.Top)
and(image15.Top+image15.Height/2<image6.Top+image6.Height)
then
  begin
  image14.Left:=image6.Left;
  image14.Top:=image6.Top;
  image14.Visible:=true;
  image6.Visible:=false;
  Timer11.Enabled:=true;
  image15.Visible:=false;
  end;
end;

procedure TForm1.Timer13Timer(Sender: TObject);
begin
{Задаем движение торпеды №3}
image16.Visible:=true;
image16.Top:=image16.Top+10;
if image16.Top>=344 then
                      begin
                          timer13.Enabled:=false;
                          image16.Top:=image3.Top+10;
                          image16.Left:=image3.Left+10;
                      end;
if not image3.Visible then image16.Visible:=false;
{попадание в пушку}
if (image16.Left+image16.Width/2>=image6.Left)
and(image16.Left+image16.Width/2<=image6.Left+image6.Width)
and(image16.Top+image16.Height/2>=image6.Top)
and(image16.Top+image16.Height/2<image6.Top+image6.Height)
then
  begin
  image14.Left:=image6.Left;
  image14.Top:=image6.Top;
  image14.Visible:=true;
  image6.Visible:=false;
  Timer11.Enabled:=true;
  image16.Visible:=false;
  end;
end;

procedure TForm1.Timer14Timer(Sender: TObject);
begin
{Задаем движение торпеды №4}
image17.Visible:=true;
image17.Top:=image17.Top+10;
if image17.Top>=344 then
                      begin
                          timer14.Enabled:=false;
                          image17.Top:=image4.Top+10;
                          image17.Left:=image4.Left+10;
                      end;
if not image4.Visible then image17.Visible:=false;
{попадание в пушку}
if (image17.Left+image17.Width/2>=image6.Left)
and(image17.Left+image17.Width/2<=image6.Left+image6.Width)
and(image17.Top+image17.Height/2>=image6.Top)
and(image17.Top+image17.Height/2<image6.Top+image6.Height)
then
  begin
  image14.Left:=image6.Left;
  image14.Top:=image6.Top;
  image14.Visible:=true;
  image6.Visible:=false;
  Timer11.Enabled:=true;
  image17.Visible:=false;
  end;
end;

procedure TForm1.Timer15Timer(Sender: TObject);
begin
{Задаем движение торпеды №5}
image18.Visible:=true;
image18.Top:=image18.Top+10;
if image18.Top>=344 then
                      begin
                          timer15.Enabled:=false;
                          image18.Top:=image5.Top+10;
                          image18.Left:=image5.Left+10;
                      end;
if not image5.Visible then image18.Visible:=false;
{попадание в пушку}
if (image18.Left+image18.Width/2>=image6.Left)
and(image18.Left+image18.Width/2<=image6.Left+image6.Width)
and(image18.Top+image18.Height/2>=image6.Top)
and(image18.Top+image18.Height/2<image6.Top+image6.Height)
then
  begin
  image14.Left:=image6.Left;
  image14.Top:=image6.Top;
  image14.Visible:=true;
  image6.Visible:=false;
  Timer11.Enabled:=true;
  image18.Visible:=false;
  end;
end;

procedure TForm1.Timer16Timer(Sender: TObject);
begin
{Счетчик для подсчета жизней}
if image14.Visible then k2:=k2+1;
if k2=1 then
          begin
              image21.Visible:=false;
              image20.Visible:=true;
              image19.Visible:=true;
          end;
if k2=2 then
          begin
              image21.Visible:=false;
              image20.Visible:=false;
              image19.Visible:=true;
          end;
if k2=3 then
          begin
              image21.Visible:=false;
              image20.Visible:=false;
              image19.Visible:=false;
              Timer1.Enabled:=false;

              Timer2.Enabled:=false;
              Timer3.Enabled:=false;
              Timer4.Enabled:=false;
              Timer5.Enabled:=false;
              {Timer6.Enabled:=false;
              Timer11.Enabled:=false;}
              Timer7.Enabled:=false;
              Timer8.Enabled:=false;
              Timer9.Enabled:=false;
              Timer10.Enabled:=false;
              Timer12.Enabled:=false;
              Timer13.Enabled:=false;
              Timer14.Enabled:=false;
              Timer15.Enabled:=false;
              Timer16.Enabled:=false;

              image1.Visible:=false;
              image2.Visible:=false;
              image3.Visible:=false;
              image4.Visible:=false;
              image5.Visible:=false;

              image8.Visible:=false;
              image9.Visible:=false;
              image10.Visible:=false;
              image11.Visible:=false;
              image12.Visible:=false;

              image13.Visible:=false;
              image15.Visible:=false;
              image16.Visible:=false;
              image17.Visible:=false;
              image18.Visible:=false;

              image14.Visible:=false;
              image6.Visible:=false;
              image7.Visible:=false;

              Label5.Caption:='';
              Label1.Caption:='';
              Label2.Caption:='';
              Label3.Caption:='';
              Label4.Caption:='';
              image22.Visible:=true;
          end;
if k3=1 then
           begin
               Timer10.Interval:=200;
               Timer12.Interval:=250;
               Timer13.Interval:=200;
               Timer14.Interval:=200;
               Timer15.Interval:=300;
               label7.Caption:='2';
           end;
if k3=2 then
           begin
               Timer10.Interval:=100;
               Timer12.Interval:=150;
               Timer13.Interval:=100;
               Timer14.Interval:=100;
               Timer15.Interval:=200;
               label7.Caption:='3';
           end;
if k3=3 then
           begin
               Timer10.Interval:=70;
               Timer12.Interval:=90;
               Timer13.Interval:=72;
               Timer14.Interval:=80;
               Timer10.Interval:=150;
               label7.Caption:='4';
           end;
if k3=4 then
           begin
               Timer10.Interval:=45;
               Timer12.Interval:=70;
               Timer13.Interval:=48;
               Timer14.Interval:=50;
               Timer10.Interval:=100;
               label7.Caption:='5';
           end;
if k3=5 then
           begin
               Timer10.Interval:=15;
               Timer12.Interval:=20;
               Timer13.Interval:=30;
               Timer14.Interval:=25;
               Timer10.Interval:=50;
               label7.Caption:='6';
           end;
if k3=6 then
           begin
               Timer10.Interval:=10;
               Timer12.Interval:=12;
               Timer13.Interval:=15;
               Timer14.Interval:=10;
               Timer10.Interval:=20;
               label7.Caption:='7';
           end;
if k3>=7 then
           begin
             image21.Visible:=false;
              image20.Visible:=false;
              image19.Visible:=false;
              Timer1.Enabled:=false;

              Timer2.Enabled:=false;
              Timer3.Enabled:=false;
              Timer4.Enabled:=false;
              Timer5.Enabled:=false;
              {Timer6.Enabled:=false;
              Timer11.Enabled:=false;}
              Timer7.Enabled:=false;
              Timer8.Enabled:=false;
              Timer9.Enabled:=false;
              Timer10.Enabled:=false;
              Timer12.Enabled:=false;
              Timer13.Enabled:=false;
              Timer14.Enabled:=false;
              Timer15.Enabled:=false;
              Timer16.Enabled:=false;

              image1.Visible:=false;
              image2.Visible:=false;
              image3.Visible:=false;
              image4.Visible:=false;
              image5.Visible:=false;

              image8.Visible:=false;
              image9.Visible:=false;
              image10.Visible:=false;
              image11.Visible:=false;
              image12.Visible:=false;

              image13.Visible:=false;
              image15.Visible:=false;
              image16.Visible:=false;
              image17.Visible:=false;
              image18.Visible:=false;

              image14.Visible:=false;
              image6.Visible:=false;
              image7.Visible:=false;

              Label5.Caption:='';
              Label1.Caption:='';
              Label2.Caption:='';
              Label3.Caption:='';
              Label4.Caption:='';
              image22.Visible:=false;
              image23.Visible:=true;

           end;

end;

end.
