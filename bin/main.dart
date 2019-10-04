// https://s1.whiteboardfox.com/s/2ae37dc8326
import 'dart:io';
import 'dart:convert';

class Link{
  String value;
  Link next;

  Link(this.value);
}

void main() {
  //Implementation of the given diagram https://s1.whiteboardfox.com/s/2ae37dc832647bad.png
  Link firstLink = Link('Raj');
  Link secondLink = Link('Makiko');
  firstLink.next = secondLink;

  Link thirdLink = Link('Paul');
  secondLink.next = thirdLink;

  Link fourthLink = Link('Suresh');
  thirdLink.next = fourthLink;

  Link fifthLink = Link('Avinash');
  fourthLink.next = fifthLink;

  Link sixthLink = Link('Parvati');
  fifthLink.next = sixthLink;

  printChain(firstLink);
  print('-------');
  removeLink(firstLink, 'Makiko');

  // print(firstLink);
}

// Printing the linkTree
void printChain(Link link) {
  Link currLink = link;
  while (currLink != null) {
    print(currLink.value);
    currLink = currLink.next;
  }
}


// Exercise: Write a function which takes in a link and a word. It should remove the link with value matching word
void removeLink(Link firstLink, String word) {
  // Implement function here
  int cont = 1;
  int i = 0;
  Link Temp = firstLink;
  Link Temp2 = firstLink;


  while(Temp!= null){
    if(Temp.value == word){
      i = cont;


    }
    Temp = Temp.next;
    cont = cont + 1;
  }

  while(i!=2){
    Temp2 = Temp2.next;
    i = i-1;
  }
  Link Temp3 = Temp2.next;
  Temp2.next = Temp3.next;

  Link currLink = Temp2;
  print('---------');
  while (currLink != null) {

    print(currLink.value);
    currLink = currLink.next;
  }
}


