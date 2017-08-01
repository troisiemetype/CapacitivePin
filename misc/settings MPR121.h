struct MPR121_settings_t
{
	// touch and release thresholds
	unsigned char TTHRESH;
	unsigned char RTHRESH;
	
	unsigned char INTERRUPT;

	// general electrode touch sense baseline filters
	// rising filter
	unsigned char MHDR;
	unsigned char NHDR;
	unsigned char NCLR;
	unsigned char FDLR;

	// falling filter
	unsigned char MHDF;
	unsigned char NHDF;
	unsigned char NCLF;
	unsigned char FDLF;

	// touched filter
	unsigned char NHDT;
	unsigned char NCLT;
	unsigned char FDLT;

	// proximity electrode touch sense baseline filters
	// rising filter
	unsigned char MHDPROXR;
	unsigned char NHDPROXR;
	unsigned char NCLPROXR;
	unsigned char FDLPROXR;

	// falling filter
	unsigned char MHDPROXF;
	unsigned char NHDPROXF;
	unsigned char NCLPROXF;
	unsigned char FDLPROXF;

	// touched filter
	unsigned char NHDPROXT;
	unsigned char NCLPROXT;
	unsigned char FDLPROXT;

	// debounce settings
	unsigned char DTR;

	// configuration registers
	unsigned char AFE1;
	unsigned char AFE2;
	unsigned char ECR;

	// auto-configuration registers
	unsigned char ACCR0;
	unsigned char ACCR1;
	unsigned char USL; 
	unsigned char LSL; 
	unsigned char TL; 
	
	// default values in initialisation list
	MPR121_settings_t():
		TTHRESH(40),
		RTHRESH(20),
		INTERRUPT(4), 	// note that this is not a hardware interrupt, just the digital
						// pin that the MPR121 ~INT pin is connected to
		MHDR(0x01),
		NHDR(0x01),
		NCLR(0x10),
		FDLR(0x20),
		MHDF(0x01),
		NHDF(0x01),
		NCLF(0x10),
		FDLF(0x20),
		NHDT(0x01),
		NCLT(0x10),
		FDLT(0xFF),

		// NOTA: the value returned by the MPR121 is a tension, so the highest the capacitor, the lowest the value
		// So rising is when the capacitance falls, and falling is when there is a prox or touch.
		MHDPROXR(0x0F),
		NHDPROXR(0x0F),
		NCLPROXR(0x00),
		FDLPROXR(0x00),

		MHDPROXF(0x01),
		NHDPROXF(0x01),
		NCLPROXF(0xFF),
		FDLPROXF(0xFF),

		NHDPROXT(0x00),
		NCLPROXT(0x00),
		FDLPROXT(0x00),

		DTR(0x11),
		AFE1(0xFF),			// 11111111 / FFI 11: samples 34; CDC 111111: 63uA
		AFE2(0x30),			// 00110000 / CDT 001: charging time 0.5us; SFI 10: samples 10; ESI 000: 1ms
		ECR(0xCC),			// 11001100 / CL 11: Baseline tracking + init; ELEPROX 00: prox disable; ELE 1100: all electrod enable 
		// default to fast baseline startup and 12 electrodes enabled, no prox
		ACCR0(0x00),
		ACCR1(0x00),
		USL(0x00), 
		LSL(0x00), 
		TL(0x00) {}
	
};