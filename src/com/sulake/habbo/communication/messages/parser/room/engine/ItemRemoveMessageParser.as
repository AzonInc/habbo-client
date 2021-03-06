
package com.sulake.habbo.communication.messages.parser.room.engine
{
    import com.sulake.core.communication.messages.IMessageParser;
    import com.sulake.core.communication.messages.IMessageDataWrapper;

    public class ItemRemoveMessageParser implements IMessageParser 
    {

        private var _roomId:int = 0;
        private var _roomCategory:int = 0;
        private var _itemId:int = 0;

        public function get roomId():int
        {
            return (this._roomId);
        }
        public function get roomCategory():int
        {
            return (this._roomCategory);
        }
        public function get itemId():int
        {
            return (this._itemId);
        }
        public function flush():Boolean
        {
            this._itemId = 0;
            this._roomId = 0;
            this._roomCategory = 0;
            return (true);
        }
        public function parse(_arg_1:IMessageDataWrapper):Boolean
        {
            if (_arg_1 == null){
                return (false);
            };
            this._itemId = int(_arg_1.readString());
            return (true);
        }

    }
}//package com.sulake.habbo.communication.messages.parser.room.engine

// IMessageDataWrapper = "_-0Mb" (String#4014, DoABC#2)
// ItemRemoveMessageParser = "_-01N" (String#3589, DoABC#2)
// readString = "_-2y7" (String#1973, DoABC#2)
// _itemId = "_-01C" (String#574, DoABC#2)
// IMessageParser = "_-5U" (String#7770, DoABC#2)


