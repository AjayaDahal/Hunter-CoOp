
#pragma once
#include <string>
#include<iostream>
using namespace std;

//node for linked list
//template<typename type>
struct node
{
    string data;
    node* next = NULL;
};

//create a list of defective parts
template<typename type>
class List
{
private:
    node* head= NULL, * tail = NULL;
public:
    List()
    {
        head = NULL;
        tail = NULL;
    }
    /*
    ~List(){
        if (head != NULL) {
            node* ptr;
            
            ptr = head;
            while (ptr != NULL) {
                //cout << ptr->data << endl;
                node* temp = ptr;
                delete temp;
                ptr = ptr->next;
                
            }
            delete tail;
        }
        else {
            cout << "Passed" << endl;
        }
    }
    */
    
    void append(string n)
    {
        node* tmp = new node;
        tmp->data = n;
        tmp->next = NULL;

        if (head == NULL)
        {
            head = tmp;
            tail = tmp;
        }
        else
        {
            tail->next = tmp;
            tail = tail->next;
        }
        
    }
    void display() {
        if (head != NULL) {
            node* ptr;
            ptr = head;
            while (ptr != NULL) {
                cout << ptr->data << endl;
                ptr = ptr->next;
            }
        }
        
    }
};


//Stores list of defective parts in terms of date and serial number
template<typename type>
class defectPart {
public:
    defectPart <type>()  {
        this->sn = sn;
        this->date = date;
        this->part = part;
    }
    defectPart <type>(string sn, string date, vector<type> part) {
        this->sn = sn;
        this->date = date;
        this->part = part;
    }
    void display() {
        cout << date << " " << sn << endl;
        
        //part.display();
        for (int i = 0; i < part.size(); i++) {
            cout << part[i] << endl;
        }
    }
    vector<type> part;
    string sn;
    string date;

};


//Stores the list of object "defectPart which already has date, serial number and list of defective parts for that serial number.
template<typename type>
class listDefectbySn {
public:

    listDefectbySn() {
        object;
    }
    void addItem(defectPart<type> object) {
        this->object.append(object);
    }
    void display() {
        object.display();
    }
    List<type> object;
};
