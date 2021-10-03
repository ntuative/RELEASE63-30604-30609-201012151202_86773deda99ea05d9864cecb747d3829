package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1687:int = 0;
      
      public static const const_1479:int = 1;
      
      public static const const_1381:int = 2;
      
      public static const const_1782:int = 3;
      
      public static const const_1721:int = 4;
      
      public static const const_1713:int = 5;
      
      public static const const_1264:int = 10;
      
      public static const const_1783:int = 11;
      
      public static const const_1672:int = 12;
      
      public static const const_1798:int = 13;
      
      public static const const_1800:int = 16;
      
      public static const const_1788:int = 17;
      
      public static const const_1621:int = 18;
      
      public static const const_1776:int = 19;
      
      public static const const_1584:int = 20;
      
      public static const const_1699:int = 22;
      
      public static const const_1675:int = 23;
      
      public static const const_1774:int = 24;
      
      public static const const_1614:int = 25;
      
      public static const const_1620:int = 26;
      
      public static const const_1590:int = 27;
      
      public static const const_1763:int = 28;
      
      public static const const_1703:int = 29;
      
      public static const const_1759:int = 100;
      
      public static const const_1642:int = 101;
      
      public static const const_1739:int = 102;
      
      public static const const_1726:int = 103;
      
      public static const const_1773:int = 104;
      
      public static const const_1804:int = 105;
      
      public static const const_1799:int = 106;
      
      public static const const_1732:int = 107;
      
      public static const const_1660:int = 108;
      
      public static const const_1736:int = 109;
      
      public static const const_1701:int = 110;
      
      public static const const_1655:int = 111;
      
      public static const const_1780:int = 112;
      
      public static const const_1696:int = 113;
      
      public static const const_1757:int = 114;
      
      public static const const_1791:int = 115;
      
      public static const const_1717:int = 116;
      
      public static const const_1588:int = 117;
      
      public static const const_1634:int = 118;
      
      public static const const_1615:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1479:
            case const_1264:
               return "banned";
            case const_1381:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
