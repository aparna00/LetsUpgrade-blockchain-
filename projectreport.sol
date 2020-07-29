pragma solidity ^0.4.21<0.6.12;

contract report{
    string public name;
    uint public roll;
    string public batch;
    uint public mark1;
    uint public mark2;
    uint public mark3;
    uint public mark4;
    string public status;
   
function report(string newname, uint newroll, string newbatch, uint newmark1, uint newmark2, uint newmark3, uint newmark4) public  {
    name=newname;
    roll=newroll;
    batch=newbatch;
    mark1=newmark1;
    mark2=newmark2;
    mark3=newmark3;
    mark4=newmark4;
    if((mark1+mark2+mark3+mark4)/4>=50){
        status="PASS";}
    else{
        status="FAIL";
    }
   
}

function setnewdetails(string newname, uint newroll, string newbatch, uint newmark1, uint newmark2, uint newmark3, uint newmark4)public{
    name=newname;
    roll=newroll;
    batch=newbatch;
    mark1=newmark1;
    mark2=newmark2;
    mark3=newmark3;
    mark4=newmark4;
    if((mark1+mark2+mark3+mark4)/4>=50){
        status="PASS";}
    else{
        status="FAIL";
    }
   
}

function getcurrentdetails() public view returns(string,uint,string,uint,uint,uint,uint,string){
    return(name,roll,batch,mark1,mark2,mark3,mark4,status);
}

}
