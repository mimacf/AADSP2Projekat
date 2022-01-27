
#include "processing.h"
#include <math.h>


#define MAX_NUM_OUT_CH		6
#define MAX_NUM_IN_CH		2
#define MAX_NUM_OUT_MODE	5

#define LeftInput 0
#define RightInput 1

// Index of channels
#define Ls		0
#define L		1
#define C       2
#define R		3
#define Rs		4
#define LFE		5

static const DSPint outputChMask[MAX_NUM_OUT_MODE][MAX_NUM_OUT_CH] =
{
	//Ls  L  C  R  Rs  LFE
	{ 0, 1, 0, 1, 0, 0},	//2.0.0 
	{ 0, 1, 0, 1, 0, 0},	//2.0.1
	{ 1, 0, 0, 0, 1, 0},	//0.2.0 
	{ 1, 0, 0, 0, 1, 1},	//0.2.1 
	{ 1, 1, 1, 1, 1, 0}		//3.2.0 
};

DSPint get_out_num_ch(DSPint mode)
{
	DSPint ret = 0;

	for (DSPint i = 0; i < MAX_NUM_OUT_CH; i++)
	{
		ret += outputChMask[mode][i];
	}

	return ret;
}

DSPint is_channel_active(DSPint mode, DSPint channel)
{
	return outputChMask[mode][channel];
}


/////////////////////////////////////////////////////////////////////////////////
// @Author	<student name>
// @Date		<date>  
//
// Function:
// multitap_echo
//
// @param - input - Buffer with input samples
//		  - output - Buffer with output samples
//		  - echo_state - Control state structure
//		  - mode - selected output mode
//
// @return - nothing
// Comment: Apply multichannel processing to input samples
//
// E-mail:	<email>
//
/////////////////////////////////////////////////////////////////////////////////
DSPint mode = OM_3_2_0;
DSPint enable = ON;

void processing(DSPfract input[][BLOCK_SIZE], DSPfract output[][BLOCK_SIZE], EchoState* stanje)
{
	DSPfract inputGain = pow(10.0, -6.0 / 20.0);
	DSPfract headroomGain = pow(10.0, -3.0 / 20.0);
	DSPfract gainLs = pow(10.0, -2.0 / 20.0);
	DSPfract gainL = pow(10.0, -6.0 / 20.0);
	DSPfract gainR = pow(10.0, -6.0 / 20.0);
	DSPfract gainLFE = pow(10.0, -2.0 / 20.0);

	DSPfract* LeftInputChannel = *input;
	input++;
	DSPfract* RightInputChannel = *input;
	
	

	if (enable == ON) 
	{
		if (mode == OM_2_0_0)
		{

		
			output++;
			DSPfract* LeftOutBuffer = *output;
			output += 2;
			DSPfract* RightOutBuffer = *output;
			DSPint i;
			//Mix left and right channels and output result to center channel
			for (i = 0; i < BLOCK_SIZE; i++)
			{
				
				*LeftOutBuffer = (inputGain * *LeftInputChannel + inputGain * *RightInputChannel)*headroomGain * gainL;
				*RightOutBuffer = (inputGain * *LeftInputChannel + inputGain * *RightInputChannel)*headroomGain * gainR;
				LeftOutBuffer++;
				RightOutBuffer++;
				LeftInputChannel++;
				RightInputChannel++;
			}
		}

		if (mode == OM_2_0_1)
		{
			DSPfract* LsOutBuffer = *output;
			output++;
			DSPfract* LeftOutBuffer = *output;
			output += 2;
			DSPfract* RightOutBuffer = *output;
			output += 2;
			DSPfract* LFEOutBuffer = *output;
			//Mix left and right channels and output result to center channel
			for (DSPint i = 0; i < BLOCK_SIZE; i++)
			{
				*LeftOutBuffer = (inputGain * *LeftInputChannel + inputGain * *RightInputChannel) * headroomGain * gainL;
				*RightOutBuffer = (inputGain * *LeftInputChannel + inputGain * *RightInputChannel) * headroomGain * gainR;
				*LFEOutBuffer = (inputGain * *LeftInputChannel + inputGain * *RightInputChannel) * headroomGain;
				LeftOutBuffer++;
				RightOutBuffer++;
				LFEOutBuffer++;
				LeftInputChannel++;
				RightInputChannel++;
			}
			
		}

		if (mode == OM_0_2_0)
		{
			DSPfract* LsOutBuffer = *output;
			output++;
			DSPfract* LeftOutBuffer = *output;
			output += 2;
			DSPfract* RightOutBuffer = *output;
			output++;
			DSPfract* RsOutBuffer = *output;

			//Mix left and right channels and output result to center channel
			for (DSPint i = 0; i < BLOCK_SIZE; i++)
			{
				*LsOutBuffer = inputGain * *LeftInputChannel;
				*RsOutBuffer = inputGain * *RightInputChannel;
				LsOutBuffer++;
				RsOutBuffer++;
				LeftInputChannel++;
				RightInputChannel++;
			}
			multitap_echo(output[Ls], output[Ls], BLOCK_SIZE, stanje);
			for (DSPint i = 0; i < BLOCK_SIZE; i++)
			{
				*LsOutBuffer = *LsOutBuffer + gainLs * *LeftInputChannel + *LeftOutBuffer;
				*RsOutBuffer = *RsOutBuffer + gainLs * *RightInputChannel + *RightOutBuffer;
				LsOutBuffer++;
				RsOutBuffer++;
				LeftOutBuffer++;
				RightOutBuffer++;
				LeftInputChannel++;
				RightInputChannel++;
			}

		}

		if (mode == OM_0_2_1)
		{
			DSPfract* LsOutBuffer = *output;
			output++;
			DSPfract* LeftOutBuffer = *output;
			output += 2;
			DSPfract* RightOutBuffer = *output;
			output++;
			DSPfract* RsOutBuffer = *output;
			output++;
			DSPfract* LFEOutBuffer = *output;

			//Mix left and right channels and output result to center channel
			for (DSPint i = 0; i < BLOCK_SIZE; i++)
			{
				*LsOutBuffer = inputGain * *LeftInputChannel;
				*RsOutBuffer = inputGain * *RightInputChannel;
				*LFEOutBuffer = (inputGain * *LeftInputChannel + inputGain * *RightInputChannel) * headroomGain;
				LsOutBuffer++;
				RsOutBuffer++;
				LFEOutBuffer++;
				LeftInputChannel++;
				RightInputChannel++;
			}
			multitap_echo(output[Ls], output[Ls], BLOCK_SIZE, stanje);
			for (DSPint i = 0; i < BLOCK_SIZE; i++)
			{
				*LsOutBuffer = *LsOutBuffer + gainLs * *LeftInputChannel + *LeftOutBuffer;
				*RsOutBuffer = *RsOutBuffer + gainLs * *RightInputChannel + *RightOutBuffer;
				LsOutBuffer++;
				RsOutBuffer++;
				LeftInputChannel++;
				RightInputChannel++;
				LeftOutBuffer++;
				RightOutBuffer++;
			}
		}

		if (mode == OM_3_2_0)
		{
			DSPfract* LsOutBuffer = *output;
			output++;
			DSPfract* LeftOutBuffer = *output;
			output++;
			DSPfract* CentralOutBuffer = *output;
			DSPfract* RightOutBuffer = *output;
			output++;
			DSPfract* RsOutBuffer = *output;

			//Mix left and right channels and output result to center channel
			for (DSPint i = 0; i < BLOCK_SIZE; i++)
			{
				*LeftOutBuffer = (inputGain * *LeftInputChannel + inputGain * *RightInputChannel) * headroomGain * gainL;
				*RightOutBuffer = (inputGain * *LeftInputChannel + inputGain * *RightInputChannel) * headroomGain * gainR;
				*CentralOutBuffer = (inputGain * *LeftInputChannel + inputGain * *RightInputChannel) * headroomGain;
				*LsOutBuffer = inputGain * *LeftInputChannel;
				*RsOutBuffer = inputGain * *RightInputChannel;
				LeftOutBuffer++;
				RightOutBuffer++;
				CentralOutBuffer++;
				LeftInputChannel++;
				RightInputChannel++;
				LsOutBuffer++;
				RsOutBuffer++;

			}
			multitap_echo(output[Ls], output[Ls], BLOCK_SIZE, stanje);
			for (DSPint i = 0; i < BLOCK_SIZE; i++)
			{
				*LsOutBuffer = *LsOutBuffer + gainLs * *LeftInputChannel + *LeftOutBuffer;
				*RsOutBuffer = *RsOutBuffer + gainLs * *RightInputChannel + *RightOutBuffer;
				LeftInputChannel++;
				RightInputChannel++;
				LeftOutBuffer++;
				RightOutBuffer++;
				LsOutBuffer++;
				RsOutBuffer++;
			}
		}
	
	}
	

}
