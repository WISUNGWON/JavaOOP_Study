package hashmap;

public class MemberHashMapTest {

    public static void main(String[] args) {
        
        MemberHashMap manager = new MemberHashMap();
        
        Member memberLee = new Member(100, "Lee");
        Member memberKim = new Member(200, "Kim");
        Member memberPark = new Member(300, "Park");
        Member memberPark2 = new Member(300, "Parks");
 
        
        manager.addMember(memberLee);
        manager.addMember(memberKim);
        manager.addMember(memberPark);
        manager.addMember(memberPark2); //key는 중복되지 않음.
   
        
        manager.showAllmember();
        
        manager.removeMember(200);
        manager.showAllmember();

    }

}
