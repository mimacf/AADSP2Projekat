#ifndef PROCESSING_H
#define PROCESSING_H

#include "common.h"
#include "multitap_echo.h"

#if __cplusplus
extern "C" {
#endif

enum OUTPUT_MODES
{
	OM_2_0_0 = 0,
	OM_2_0_1 = 1,
	OM_0_2_0 = 2,
	OM_0_2_1 = 3,
	OM_3_2_0 = 4
};

DSPint get_out_num_ch(DSPint mode);

DSPint is_channel_active(DSPint mode, DSPint channel);

void processing(DSPfract input[][BLOCK_SIZE], DSPfract output[][BLOCK_SIZE],EchoState* stanje);


enum Enable
{
	OFF = 0,
	ON = 1

};
#if __cplusplus
}
#endif

#endif // !PROCESSING_H
