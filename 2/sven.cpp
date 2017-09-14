#include <math.h>
#include <iostream>
using namespace std;
double func(double x){
  return x - 0.5*pow(x,2)+pow(x,3)-0.5*pow(x,7);
}

int main(){
  double prev =0;
  double k = 0;
  double next=0;
  double t=0.8;
  double first = func(prev-t);
  double temp;
  double second = func(prev);
  double third = func(prev+t);
  double a0 = 0;
  double b0 = 0;
  double delta = 0;
  if ((first>second) && (second<third)){
    cout << prev-t << " "<<prev+t<<endl;
    return 0;
  }
  if ((first <= second) && (second >= third)) {
    cout <<" Function is not unimodal. Take another x0 or t";
    return 0;
  }
  if ((first>=second) && (second >=third)){
    delta = t;
    a0 = prev;
    next = prev + t;
    k = 1;
  }
  if ((first<=second) && (second <=third)){
    delta = -t;
    b0 = prev;
    next = prev - t;
    k = 1;
  }

  while(true){
    temp = next;
    next = prev + pow(2, k)*delta;
    prev = temp;
    if (func(next)< func(prev) && (delta == t)){
      a0 = prev;
      k++;
      continue;
    }
    if (func(next)< func(prev) && (delta == -t)){
      b0 = prev;
      k++;
      continue;
    }
    if(func(next)>=func(prev)){
      if (delta==t){
        a0=prev;
      }else{
        b0=prev;
      }
      if (a0<=b0){
        cout << a0 << " " << b0<<endl;
        cout << func(a0)<<" "<<func(b0)<<endl;
      } else{
        cout << b0 << " " << a0<<endl;
        cout << func(b0)<<" "<<func(a0)<<endl;
      }
      return 0;
    }
  }
  return 0;
}
