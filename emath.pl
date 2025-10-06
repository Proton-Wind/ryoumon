# emath.pl v 0.16 2013/05/21 by tDB (CQB00260@nifty.ne.jp)
#
# 定数
# 円周率
    $pi=atan2(1,1)*4;
# 自然対数の底
    $Napier=exp(1);
    $ln=exp(1);
# 関数
sub tan{my $x=shift;return sin($x)/cos($x);}
# atan2(y,x)
sub asin{my $x=shift;return atan2($x,sqrt(1-$x*$x));}
sub acos{my $x=shift;\return atan2(sqrt(1-$x*$x),$x);}
sub DegRad{my $x=shift;return $pi*$x/180;}
sub RadDeg{my $x=shift;return 180*$x/$pi;}
sub Degsin{my $x=shift;return sin($pi*$x/180);}
sub Degcos{my $x=shift;return cos($pi*$x/180);}
sub Degtan{my $x=shift;return tan($pi*$x/180);}
sub sinh{my $x=shift;return (exp($x)-exp(-$x))/2;}
sub cosh{my $x=shift;return (exp($x)+exp(-$x))/2;}
sub tanh{my $x=shift;return (exp($x)-exp(-$x))/(exp($x)+exp(-$x));}
sub arcsinh{my $x=shift;return log($x+sqrt($x*$x+1));}
sub arccosh{my $x=shift;return log($x+sqrt($x*$x-1));}
sub arctanh{my $x=shift;return (log(1+$x)-log(1-$x))/2;}
sub log2{my $a=shift;my $x=shift;return log($x)/log($a);}
sub sqrt2{my $n=shift; my $x=shift;
  if($n%2==1 && $x<0){$sqrtsgn=-1;$x*=-1;}else{$sqrtsgn=1;}
return $sqrtsgn*($x)**(1/($n));}
sub max{my $mx;$mx=shift;foreach $_(@_) {if($_>$mx){$mx=$_;}};return$mx;}
sub min{my $mn;$mn=shift;foreach $_(@_) {if($_<$mn){$mn=$_;}};return$mn;}
sub Int{my $x=shift; my $y=int($x);
  if ($x>0){
    return $y;
  } else {
      if ($y==$x) {
        return $y;
      } else{
        return $y-1;
      }
  }
}
sub Imod{my $x=shift; my $y=shift; $x % $y;}
sub Igcm{my $a=shift; my $b=shift;
    $a=abs($a);
    $b=abs($b);
    if($a==0){
      return 1
    } else {
      if($a<$b){$c=$a;$a=$b;$b=$c;}
      $ret=$a;
      while ($ret!=0){$ret=abs(Imod($a,$b));$a=$b;$b=$ret;}
      return $a;
    }
}
sub sign{my $x=shift;
  if ($x>0) {
    \return 1;
  } else {
      if ($x<0) {
        return -1;
      } else {
        return 0;
      }
  }
}
sub emrpower{my $mx=shift;my $mn=shift;return sign($mx)*abs($mx)**$mn;}
# 二次行列式
sub detii{my $a=shift;my $b=shift;my $c=shift;$d=shift;
my @a=($a,$b);
my @b=($c,$d);
return $a[0]*$b[1]-$a[1]*$b[0];
}
# 三次行列式
sub detiii{my $a=shift;my $b=shift;my $c=shift;
  my $d=shift; my $e=shift;my $f=shift;
  my $g=shift; my $h=shift;my $i=shift;
my @a=($a,$b,$c);
my @b=($d,$e,$f);
my @c=($g,$h,$i);
return $a[0]*$b[1]*$c[2]
      +$a[1]*$b[2]*$c[0]
      +$a[2]*$b[0]*$c[1]
      -$a[2]*$b[1]*$c[0]
      -$a[0]*$b[2]*$c[1]
      -$a[1]*$b[0]*$c[2];
}
# 連立3元1次方程式
sub renrituiii{
	my $a1=shift; my $b1=shift; my $c1=shift; $d1=shift;
	my $a2=shift; my $b2=shift; my $c2=shift; $d2=shift;
	my $a3=shift; my $b3=shift; my $c3=shift; $d3=shift;
  my $bunbo=detiii($a1,$b1,$c1,$a2,$b2,$c2,$a3,$b3,$c3);
  my $x=detiii($d1,$b1,$c1,$d2,$b2,$c2,$d3,$b3,$c3);
  my $y=detiii($a1,$d1,$c1,$a2,$d2,$c2,$a3,$d3,$c3);
  my $z=detiii($a1,$b1,$d1,$a2,$b2,$d2,$a3,$b3,$d3);
  $x/=$bunbo;
  $y/=$bunbo;
  $z/=$bunbo;
  my @ans=($x,$y,$z);
  return @ans;
}
# 二次方程式
sub qeq{my $a=shift; my $b=shift; my $c=shift;
if (abs($a)<0.0001){sprintf("%s,",-$c/$b);}
else{
  my $D=$b*$b-4*$a*$c;
  if ($D<0){sprintf(",");}
  elsif ($D<0.0001){sprintf("%s,",-$b/(2*$a));}
  else{
    my $DD=sqrt($D);
    my $xi=(-$b+$DD)/(2*$a);
    my $xii=(-$b-$DD)/(2*$a);
    if ($xi<$xii){
	sprintf("%s,%s",$xi,$xii);}
    else{
	sprintf("%s,%s",$xii,$xi);}
  }
}
}
# 四捨五入
sub emround{my $num=shift; my $decimals=shift;
  $format = '%.' . $decimals . 'f';
  $magic = ($num > 0) ? 0.5 : -0.5;
  sprintf($format, int(($num * (10 ** $decimals)) + $magic)/(10 ** $decimals));
}
#
sub renrituii{my $a=shift; $b=shift; $c=shift;$d=shift;$e=shift;$f=shift;
my @a=($a,$b,$c);
my @b=($d,$e,$f);
  my $delta=$a[0]*$b[1]-$b[0]*$a[1];
  my $dx=$a[2]*$b[1]-$b[2]*$a[1];
  my $dy=$a[0]*$b[2]-$b[0]*$a[2];
  $dx=$dx/$delta;
  $dy=$dy/$delta;
  return @ans;
}
# ベクトル計算
sub addvec{my $xi=shift;my $yi=shift;my $xii=shift;$yii=shift;
  my $x=$xi+$xii;
  my $y=$yi+$yii;
  my @ans=($x,$y);
  return @ans;
}
sub subvec{my $xi=shift;my $yi=shift;my $xii=shift;$yii=shift;
  my $x=$xi-$xii;
  my $y=$yi-$yii;
  my @ans=($x,$y);
  return @ans;
}
sub mulvec{my $m=shift; my $xi=shift; my $yi=shift;
  my $x=$m*$xi;
  my $y=$m*$yi;
  my @ans=($x,$y);
  return @ans;
}
sub absvec{my $x=shift; my $y=shift;
  return sqrt($x*$x+$y*$y);
}
# ガウス関数
sub Gaussdist{my $m=shift; $v=shift;my $x=shift;
  return exp(-($x-$m)**2/(2*$v))*1/sqrt(2*$pi*$v);
}
1;
#
# v 0.03 asin, acos 追加
# v 0.04 Int, Degsin, Degcos, Degtan 追加
# v 0.05 2005/11/15 sign, emrpower 追加
# v 0.06 2006/12/06 addvec など
# v 0.07 2006/12/27 emround : 四捨五入
# v 0.08 2007/02/28 Imod(x,y) : 剰余 x % y
# v 0.09 2007/05/14 sqrt2(n,x) : n乗根
# v 0.10 2008/02/20 sinh, cosh, arcsinh, arccosh: 双曲線関数
# v 0.11 2009/09/05 Igcm
# v 0.12 2010/01/08 detii, detiii
# v 0.13 2011/03/07 renrituiii: 連立三元一次方程式
# v 0.14 2012/05/22 Gaussdist(m,v,x)
# v 0.15 2012/07/20 $ln: 自然対数の底
# v 0.16 2013/05/21 $Igcm: 0 への対応
