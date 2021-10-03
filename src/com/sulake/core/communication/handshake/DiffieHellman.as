package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_867:BigInteger;
      
      private var var_2317:BigInteger;
      
      private var var_1614:BigInteger;
      
      private var var_2318:BigInteger;
      
      private var var_1283:BigInteger;
      
      private var var_1615:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1283 = param1;
         this.var_1615 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1283.toString() + ",generator: " + this.var_1615.toString() + ",secret: " + param1);
         this.var_867 = new BigInteger();
         this.var_867.fromRadix(param1,param2);
         this.var_2317 = this.var_1615.modPow(this.var_867,this.var_1283);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1614 = new BigInteger();
         this.var_1614.fromRadix(param1,param2);
         this.var_2318 = this.var_1614.modPow(this.var_867,this.var_1283);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2317.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2318.toRadix(param1);
      }
   }
}
