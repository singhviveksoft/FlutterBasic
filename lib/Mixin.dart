class Tea extends Sugar with Milk{
  making()=> print('make tea');
  addWater()=> print(' add Water');
}
abstract class Sugar{
  void chini(){
    print('add chini');
}
}
mixin Milk{
  void addmilk(){
    print('add milk');
  }
}
void main(){
  Tea tea=Tea();
  tea.making();
  tea.addWater();
  tea.chini();
  tea.addmilk();

}
