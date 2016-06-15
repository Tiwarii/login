
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Rashmi Tiwari
 */
public class UserDao {
    
    public User verifyUser(User user){
        try{
            Connection con=DBconnection.getConnection();
            String qry="select * from user where userName=? and userPassword=?";
            PreparedStatement pst=con.prepareStatement(qry);
            pst.setString(1, user.getUserName());
            pst.setString(2, user.getUserPassword());
            ResultSet rs =pst.executeQuery();
            while(rs.next()){
              User verifiedUser = new User(); 
              verifiedUser.setUserId(rs.getInt("userId"));
              verifiedUser.setUserName(rs.getString("userName"));
              verifiedUser.setUserPassword(rs.getString("userPassword"));
              return verifiedUser;
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
