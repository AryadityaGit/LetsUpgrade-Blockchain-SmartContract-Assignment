ROPSTEN TRANSACTION LINK: 

//DETAILS
status 	true Transaction mined and execution succeed
transaction hash 	0xc27b78023c6264186d23ff3bf12d95cdc3b7d1194c6aa5c73b71bf620c4cb1d0
from 	0xcE336ED05D3920Ab6fE94BdABEFbEb72BbC05ca2
to 	reportCard.getdetails() 0x3101b05062e12Dfc4C7A64BB08aa8e1d295A581f
transaction cost 	35809 gas (Cost only applies when called by a contract)
execution cost 	14537 gas (Cost only applies when called by a contract)


pragma solidity >=0.4.17 < 0.6.12;

contract reportCard {
    
    string name;
    uint rollno;
    string batch;
    uint marks1;
    uint marks2;
    uint marks3;
    uint marks4;
    uint result;
    string status;
    
    function reportCard(string name1, uint rollno1, string batch1, uint marksq1, uint marksq2, uint marksq3, uint marksq4 ) public {
        
        name = name1;
        rollno = rollno1;
        batch = batch1;
        marks1 = marksq1;
        marks2 = marksq2;
        marks3 = marksq3;
        marks4 = marksq4;
        
        result = marks1 + marks2 + marks3 + marks4;
        result = result * 100/400;
        
         if( result < 40)
            status = "fail";
            
        else if(result >= 40)
            status = "pass";
    }
    
    function getdetails() public view returns(string, uint, string, uint, uint, uint, uint, uint, string){
        return (name, rollno, batch, marks1, marks2, marks3, marks4, result, status);
    }
}		
