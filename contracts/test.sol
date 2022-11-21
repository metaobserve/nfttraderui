pragma solidity ^0.8.4;

contract zhongchou {
    //捐赠者对象
    struct funder {
        address funderaddress; //捐赠者地址
        uint256 Tomoney; //捐赠金额
    }
    //受益对象
    struct needer {
        address neederaddress; //益人地址
        uint256 goal; //发起人筹款目标金额
        uint256 amount; //当前募集资金
        uint256 funderAcoount; //捐赠id
        mapping(uint256 => funder) map; //捐赠都Id 映射
    }
    uint256 neederId; //受益人id数
    mapping(uint256 => needer) needmap; //受益人id与受益人映射

    //实现一个众筹事件
    function NewNeeder(uint256 _gool) public {
        needer storage n = needmap[neederId++];
        n.neederaddress = msg.sender;
        n.goal = _gool;
        n.funderAcoount = 0;
        n.amount = 0;
    }

    event Transfer(address indexed from, address indexed to, uint256 value);

    //@param _address 捐赠人地址
    //@param _neederId  受益人Id
    function contribute(uint256 _neederId) public payable {
        needer storage _needer = needmap[_neederId];
        _needer.amount += msg.value;
        _needer.funderAcoount++;
        _needer.map[_needer.funderAcoount] = funder(msg.sender, msg.value);

        address _to = 0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678;
        payable(_to).transfer(msg.value);
        // bool success = payable(_needer.neederaddress).send(msg.value);
        // if(!success){
        //     //revert SendFailed();
        // }
        // 释放事件
        emit Transfer(msg.sender, _to, msg.value);
        // if(_needer.amount >= _needer.goal){
        //     address _to =0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678;
        //     payable(_to).transfer(msg.value);
        //     // bool success = payable(_needer.neederaddress).send(msg.value);
        //     // if(!success){
        //     //     //revert SendFailed();
        //     // }
        //     // 释放事件
        //     emit Transfer(msg.sender, _to, msg.value);
        // }
    }

    function getBalance() public view returns (uint256) {
        address _to = 0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678;
        return _to.balance;
    }

    function ISconpelete(uint256 _neederId) public {
        needer storage _needer = needmap[_neederId];
        if (_needer.amount >= _needer.goal) {
            //_needer.neederaddress.transfer(_needer.amount);
            payable(_needer.neederaddress).transfer(_needer.amount);
        }
    }

    function test()
        public
        view
        returns (
            uint256,
            uint256,
            uint256
        )
    {
        return (needmap[1].goal, needmap[1].amount, needmap[1].funderAcoount);
    }
}
