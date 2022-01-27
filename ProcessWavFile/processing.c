
#include "processing.h"
#include <math.h>


#define MAX_NUM_OUT_CH		6
#define MAX_NUM_IN_CH		2
#define MAX_NUM_OUT_MODE	5

// Index of channels
#define Ls		0
#define L		1
#define C       2
#define R		3
#define Rs		4
#define LFE		5

static const int outputChMask[MAX_NUM_OUT_MODE][MAX_NUM_OUT_CH] =
{
	//Ls  L  C  R  Rs  LFE
	{ 0, 1, 0, 1, 0, 0},	//2.0.0 
	{ 0, 1, 0, 1, 0, 0},	//2.0.1
	{ 1, 0, 0, 0, 1, 0},	//0.2.0 
	{ 1, 0, 0, 0, 1, 1},	//0.2.1 
	{ 1, 1, 1, 1, 1, 0}		//3.2.0 
};

int get_out_num_ch(int mode)
{
	int ret = 0;

	for (int i = 0; i < MAX_NUM_OUT_CH; i++)
	{
		ret += outputChMask[mode][i];
	}

	return ret;
}

int is_channel_active(int mode, int channel)
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


void processing(double input[][BLOCK_SIZE], double output[][BLOCK_SIZE], int mode, int enable, EchoState* stanje)
{
	/*double inputGain = pow(10.0, -6.0 / 20.0);
	double headroomGain = pow(10.0, -3.0 / 20.0);
	double gainLs = pow(10.0, -2.0 / 20.0);
	double gainL = pow(10.0, -6.0 / 20.0);
	double gainR = pow(10.0, -6.0 / 20.0);
	double gainLFE = pow(10.0, -2.0 / 20.0);*/
	double inputGain = (0.5011872336);
	double headroomGain = (0.7079457844);
	double gainLs = (0.7943282347);
	double gainL = (0.5011872336);
	double gainR = (0.5011872336);
	double gainLFE = (0.7943282347);
	
	

	if (enable == ON) 
	{
		if (mode == OM_2_0_0)
		{
			
			//Mix left and right channels and output result to center channel
			for (int i = 0; i < BLOCK_SIZE; i++)
			{
				
				output[L][i] = (inputGain * input[0][i] + inputGain * input[1][i])*headroomGain * gainL;
				output[R][i] = (inputGain * input[0][i] + inputGain * input[1][i])*headroomGain * gainR;
			}
		}

		if (mode == OM_2_0_1)
		{

			//Mix left and right channels and output result to center channel
			for (int i = 0; i < BLOCK_SIZE; i++)
			{
				output[L][i] = (inputGain * input[0][i] + inputGain * input[1][i]) * headroomGain * gainL;
				output[R][i] = (inputGain * input[0][i] + inputGain * input[1][i]) * headroomGain * gainR;
				output[LFE][i] = (inputGain * input[0][i] + inputGain * input[1][i]) * headroomGain;
			}
			
		}

		if (mode == OM_0_2_0)
		{

			//Mix left and right channels and output result to center channel
			for (int i = 0; i < BLOCK_SIZE; i++)
			{
				output[L][i] = (inputGain * input[0][i] + inputGain * input[1][i]) * headroomGain * gainL;
				output[R][i] = (inputGain * input[0][i] + inputGain * input[1][i]) * headroomGain * gainR;
				output[Ls][i] = inputGain * input[0][i];
				output[Rs][i] = inputGain * input[1][i];
			}
			multitap_echo(output[Ls], output[Ls], BLOCK_SIZE, stanje);
			for (int i = 0; i < BLOCK_SIZE; i++)
			{
				output[Ls][i] = output[Ls][i] * gainLs + output[L][i];
				output[Rs][i] = output[Rs][i] * gainLs + output[R][i];
			}

			for (int i = 0; i < BLOCK_SIZE; i++)
			{
				output[L][i] = 0;
				output[R][i] = 0;
			}

		}

		if (mode == OM_0_2_1)
		{

			//Mix left and right channels and output result to center channel
			for (int i = 0; i < BLOCK_SIZE; i++)
			{
				output[L][i] = (inputGain * input[0][i] + inputGain * input[1][i]) * headroomGain * gainL;
				output[R][i] = (inputGain * input[0][i] + inputGain * input[1][i]) * headroomGain * gainR;
				output[Ls][i] = inputGain * input[0][i];
				output[Rs][i] = inputGain * input[1][i];
				output[LFE][i] = (inputGain * input[0][i] + inputGain * input[1][i]) * headroomGain;
			}
			multitap_echo(output[Ls], output[Ls], BLOCK_SIZE, stanje);
			for (int i = 0; i < BLOCK_SIZE; i++)
			{
				output[Ls][i] = output[Ls][i] * gainLs + output[L][i];
				output[Rs][i] = output[Rs][i] * gainLs + output[R][i];
			}
			for (int i = 0; i < BLOCK_SIZE; i++)
			{
				output[L][i] = 0;
				output[R][i] = 0;
			}
		}

		if (mode == OM_3_2_0)
		{

			//Mix left and right channels and output result to center channel
			for (int i = 0; i < BLOCK_SIZE; i++)
			{
				output[L][i] = (inputGain * input[0][i] + inputGain * input[1][i]) * headroomGain * gainL;
				output[R][i] = (inputGain * input[0][i] + inputGain * input[1][i]) * headroomGain * gainR;
				output[C][i] = (inputGain * input[0][i] + inputGain * input[1][i]) * headroomGain;
				output[Ls][i] = inputGain * input[0][i];
				output[Rs][i] = inputGain * input[1][i];

			}
			multitap_echo(output[Ls], output[Ls], BLOCK_SIZE, stanje);
			for (int i = 0; i < BLOCK_SIZE; i++)
			{
				output[Ls][i] = output[Ls][i] * gainLs +  output[L][i];
				output[Rs][i] = output[Rs][i] * gainLs +  output[R][i];
			}
		}
	
	}
	

}
