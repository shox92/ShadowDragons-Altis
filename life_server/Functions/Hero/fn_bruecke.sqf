_ramp = "Land_RampConcrete_F" createvehicle [0,0,0];
_ramp setdir 92;
_ramp setpos [16329.2,12875.25,2.00143147]; 
sleep 0.01;
_ramp2 = "Land_RampConcrete_F" createvehicle [0,0,0];
_ramp2 attachTo [_ramp,[-5,0,0]];
sleep 0.01;
detach _ramp2;
_ramp3 = "Land_RampConcrete_F" createvehicle [0,0,0];
_ramp4 = "Land_RampConcrete_F" createvehicle [0,0,0];
_ramp4 attachTo [_ramp3,[-5,0,0]];
_ramp3 attachTo [_ramp,[0,-9.5,1.67]];
_ramp5 = "Land_RampConcrete_F" createvehicle [0,0,0];
_ramp6 = "Land_RampConcrete_F" createvehicle [0,0,0];
_ramp6 attachTo [_ramp5,[-5,0,0]];
_ramp5 attachTo [_ramp3,[0,-9.5,1.67]];
sleep 0.01;
detach _ramp3;
detach _ramp4;
detach _ramp5;
detach _ramp6;
_block = "BlockConcrete_F" createVehicle [0,0,0];
_block attachTo [_ramp5,[-0.1,-10.5,-0.03]];
_block setdir 90;
sleep 2;
_block2 = "BlockConcrete_F" createVehicle [0,0,0];
_block2 attachTo [_block,[0,-5.02,0]];
_block3 = "BlockConcrete_F" createVehicle [0,0,0];
_block3 attachTo [_block,[8.8,0,0]];
_block4 = "BlockConcrete_F" createVehicle [0,0,0];
_block4 attachTo [_block3,[0,-5.02,0]];
sleep 0.01;
detach _block;
detach _block2;
detach _block3;
detach _block4;
_block enableSimulationGlobal false;
_block2 enableSimulationGlobal false;
_block3 enableSimulationGlobal false;
_block4 enableSimulationGlobal false;
_ramp enableSimulationGlobal false;
_ramp2 enableSimulationGlobal false;
_ramp3 enableSimulationGlobal false;
_ramp4 enableSimulationGlobal false;
_ramp5 enableSimulationGlobal false;
_ramp6 enableSimulationGlobal false;
for "_i" from 1 to 234 do {
	_block = "BlockConcrete_F" createVehicle [0,0,0];
	_block attachTo [_block3,[8.8,0,0]];
	_block enableSimulationGlobal false;
	_block2 = "BlockConcrete_F" createVehicle [0,0,0];
	_block2 attachTo [_block,[0,-5.02,0]];
	if ( _i/2 == round(_i/2)) then {
		_bar = "Land_Crash_barrier_F" createvehicle [0,0,0];
		_bar attachto [_block2,[3.5,-2.5,1.6]];
		_bar2 =  "Land_Crash_barrier_F" createvehicle [0,0,0];
		_bar2 attachto [_block2,[-3.5,-2.5,1.6]];
		_bar3 =  "Land_Crash_barrier_F" createvehicle [0,0,0];
		_bar3 attachto [_block2,[7,-2.5,1.6]];
		_bar4 = "Land_Crash_barrier_F" createvehicle [0,0,0];
		_bar4 attachto [_block,[3.5,2.5,1.6]];
		_bar4 setdir 180;
		_bar5 =  "Land_Crash_barrier_F" createvehicle [0,0,0];
		_bar5 attachto [_block,[-3.5,2.5,1.6]];
		_bar5 setdir 180;
		_bar6 =  "Land_Crash_barrier_F" createvehicle [0,0,0];
		_bar6 attachto [_block,[7,2.5,1.6]];
		_bar6 setdir 180;
		sleep 1;
		{detach _x; _x enableSimulationGlobal false;_x allowdamage false;}foreach [_bar,_bar2,_bar3,_bar4,_bar5,_bar6];

	};
	if ( _i/10 == round(_i/10)) then {
		_lamp = "Land_LampStreet_F" createvehicle [0,0,0];
		_lamp attachto [_block2,[3,-1,1.6]];
		_lamp enableSimulationGlobal false;
	}; 
	sleep 0.01;
	detach _block;
	detach _block2;
	_block enableSimulationGlobal false;
	_block2 enableSimulationGlobal false;	
	_block3 = _block;
};






