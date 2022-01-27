
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
	DSPint i;
	for ( i = 0; i < MAX_NUM_OUT_CH; i++)
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
DSPint mode = OM_2_0_1;
DSPint enable = ON;
__memY DSPfract inputGain = FRACT_NUM(0.5011872336);
__memY DSPfract headroomGain = FRACT_NUM(0.7079457844);
__memY DSPfract gainLs = FRACT_NUM(0.7943282347);
__memY DSPfract gainL = FRACT_NUM(0.5011872336);
void processing(__memX DSPfract input[][BLOCK_SIZE],__memX DSPfract output[][BLOCK_SIZE], EchoState* stanje)
{

//	DSPfract gainR = FRACT_NUM(0.5011872336);
//	DSPfract gainLFE = FRACT_NUM(0.7943282347);


	__memX DSPfract* LeftInputChannel;
	__memX  DSPfract* RightInputChannel;
	__memX DSPfract* LsOutBuffer;
	__memX  DSPfract* LeftOutBuffer;
	__memX DSPfract* CentralOutBuffer;
	__memX DSPfract* RightOutBuffer;
	__memX DSPfract* RsOutBuffer;
	__memX DSPfract* LFEOutBuffer;
	DSPint i;

	LeftInputChannel = *input;
	input++;
	RightInputChannel = *input;
	//DSPfract* RightInputChannel = *input;
	


	

	if (enable == ON) 
	{
		DSPaccum a1, a2, a3;
		if (mode == OM_2_0_0)
		{
			output++;
			LeftOutBuffer = *output;
			output ++;
			output ++;
			RightOutBuffer = *output;

			//Mix left and right channels and output result to center channel
			for (i = 0; i < BLOCK_SIZE; i++)
			{
				
				a1 = inputGain * (DSPfract)(*LeftInputChannel);
				a2 = inputGain * (DSPfract)(*RightInputChannel);
				a3 = (DSPfract)a1 + (DSPfract)a2;
				a1 = (DSPfract)a3 * headroomGain;
				a2 = (DSPfract)a1 * gainL;
				*LeftOutBuffer = a2;
				*RightOutBuffer = a2;


				LeftOutBuffer++;
				RightOutBuffer++;
				LeftInputChannel++;
				RightInputChannel++;

				/*
				*LeftOutBuffer = (inputGain * *LeftInputChannel + inputGain * *RightInputChannel)*headroomGain * gainL;
				*RightOutBuffer = (inputGain * *LeftInputChannel + inputGain * *RightInputChannel)*headroomGain * gainR;
				LeftOutBuffer++;
				RightOutBuffer++;
				LeftInputChannel++;
				RightInputChannel++;

				*/
			}
		}

		if (mode == OM_2_0_1)
		{
			output++;
			LeftOutBuffer = *output;
			output++;
			output++;
			RightOutBuffer = *output;
			output++;
			output++;
		    LFEOutBuffer = *output;

			//Mix left and right channels and output result to center channel
			for (i = 0; i < BLOCK_SIZE; i++)
			{

				a1 = inputGain * (DSPfract)(*LeftInputChannel);
				a2 = inputGain * (DSPfract)(*RightInputChannel);
				a3 = (DSPfract)a1 + (DSPfract)a2;
				a1 = (DSPfract)a3 * headroomGain;
				*LFEOutBuffer = a1;
				a2 = (DSPfract)a1 * gainL;
				*LeftOutBuffer = a2;
				*RightOutBuffer = a2;
				
				LFEOutBuffer++;
				LeftOutBuffer++;
				RightOutBuffer++;
				LeftInputChannel++;
				RightInputChannel++;
			}
			
		}

		if (mode == OM_0_2_0)
		{
			
			LsOutBuffer = *output;
			output++;
			LeftOutBuffer = *output;
			output++;
			CentralOutBuffer = *output;
			output++;
			RightOutBuffer = *output;
			output++;
			RsOutBuffer = *output;

			//Mix left and right channels and output result to center channel

			for ( i = 0; i < BLOCK_SIZE; i++)
			{
				a1 = inputGain * (DSPfract)(*LeftInputChannel);
				a2 = inputGain * (DSPfract)(*RightInputChannel);
				a3 = (DSPfract)a1 + (DSPfract)a2;
				a1 = (DSPfract)a3 * headroomGain;
				a2 = (DSPfract)a1 * gainL;
				*LeftOutBuffer = a2;
				*RightOutBuffer = a2;

				a1 = inputGain * *LeftInputChannel;
				a2 = inputGain * *RightInputChannel;
				*LsOutBuffer = (DSPaccum)a1;
				*RsOutBuffer = (DSPaccum)a2;

				LeftOutBuffer++;
				RightOutBuffer++;
				LeftInputChannel++;
				RightInputChannel++;
				LsOutBuffer++;
				RsOutBuffer++;



				/*
				*LeftOutBuffer = (inputGain * *LeftInputChannel + inputGain * *RightInputChannel) * headroomGain * gainL;
				*RightOutBuffer = (inputGain * *LeftInputChannel + inputGain * *RightInputChannel) * headroomGain * gainR;
				*LsOutBuffer = inputGain * *LeftInputChannel;
				*RsOutBuffer = inputGain * *RightInputChannel;
				* 
				* */
				

			}

			RsOutBuffer -= 16;
			LsOutBuffer -= 16;
			LeftOutBuffer -= 16;
			RightOutBuffer -= 16;

			multitap_echo(LsOutBuffer, LsOutBuffer, BLOCK_SIZE, stanje);

			for (i = 0; i < BLOCK_SIZE; i++)
			{
				a1 = *LsOutBuffer * gainLs;
				a2 = (DSPfract)a1 + *LeftOutBuffer;
				*LsOutBuffer = (DSPfract)a2;

				a1 = *RsOutBuffer * gainLs;
				a2 = (DSPfract)a1 + *RightOutBuffer;
				*RsOutBuffer = (DSPfract)a2;

/*
				*LsOutBuffer = *LsOutBuffer * gainLs + *LeftOutBuffer;
				*RsOutBuffer = *RsOutBuffer * gainLs + *RightOutBuffer;
*/
				LeftOutBuffer++;
				RightOutBuffer++;
				LsOutBuffer++;
				RsOutBuffer++;
			}
			LeftOutBuffer -= 16;
			RightOutBuffer -= 16;

			for ( i = 0; i < BLOCK_SIZE; i++)
			{
				*LeftOutBuffer = 0;
				*RightOutBuffer = 0;

				LeftOutBuffer++;
				RightOutBuffer++;
			}
			
		}

		}

		if (mode == OM_0_2_1)
		{
			{

				LsOutBuffer = *output;
				output++;
				LeftOutBuffer = *output;
				output++;
			    CentralOutBuffer = *output;
				output++;
			    RightOutBuffer = *output;
				output++;
			    RsOutBuffer = *output;
				output++;
			    LFEOutBuffer = *output;


				//Mix left and right channels and output result to center channel
				for (i = 0; i < BLOCK_SIZE; i++)
				{
					DSPaccum a1 = inputGain * (DSPfract)(*LeftInputChannel);
					DSPaccum a2 = inputGain * (DSPfract)(*RightInputChannel);
					DSPaccum a3 = (DSPfract)a1 + (DSPfract)a2;
					a1 = (DSPfract)a3 * headroomGain;
					*LFEOutBuffer = a1;
					a2 = (DSPfract)a1 * gainL;
					*LeftOutBuffer = a2;
					*RightOutBuffer = a2;
					
					

					a1 = inputGain * *LeftInputChannel;
					a2 = inputGain * *RightInputChannel;
					*LsOutBuffer = (DSPaccum)a1;
					*RsOutBuffer = (DSPaccum)a2;
					
					LeftOutBuffer++;
					RightOutBuffer++;
					LeftInputChannel++;
					RightInputChannel++;
					LsOutBuffer++;
					RsOutBuffer++;
					LFEOutBuffer++;
					

				}

				RsOutBuffer -= 16;
				LsOutBuffer -= 16;
				LeftOutBuffer -= 16;
				RightOutBuffer -= 16;

				multitap_echo(LsOutBuffer,LsOutBuffer, BLOCK_SIZE, stanje);

				for ( i = 0; i < BLOCK_SIZE; i++)
				{
					DSPaccum a1 = *LsOutBuffer * gainLs;
					DSPaccum a2 = (DSPfract)a1 + *LeftOutBuffer;
					*LsOutBuffer = (DSPfract)a2;

					a1 = *RsOutBuffer * gainLs;
					a2 = (DSPfract)a1 + *RightOutBuffer;
					*RsOutBuffer = (DSPfract)a2;

					LeftOutBuffer++;
					RightOutBuffer++;
					LsOutBuffer++;
					RsOutBuffer++;
				}
				LeftOutBuffer -= 16;
				RightOutBuffer -= 16;

				for (i = 0; i < BLOCK_SIZE; i++)
				{
					*LeftOutBuffer = 0;
					*RightOutBuffer = 0;

					LeftOutBuffer++;
					RightOutBuffer++;
				}

			}

		}


		if (mode == OM_3_2_0)
		{
			LsOutBuffer = *output;
			output++;
			LeftOutBuffer = *output;
			output++;
			CentralOutBuffer = *output;
			output++;
			RightOutBuffer = *output;
			output++;
			RsOutBuffer = *output;


			//Mix left and right channels and output result to center channel
			for (i = 0; i < BLOCK_SIZE; i++)
			{

				DSPaccum a1 = inputGain * (DSPfract)(*LeftInputChannel);
				DSPaccum a2 = inputGain * (DSPfract)(*RightInputChannel);
				DSPaccum a3 = (DSPfract)a1 + (DSPfract)a2;
				a1 = (DSPfract)a3 * headroomGain;
				*CentralOutBuffer = a1;
				a2 = (DSPfract)a1 * gainL;
				*LeftOutBuffer = a2;
				*RightOutBuffer = a2;
				

				a1 = inputGain * *LeftInputChannel;
				a2 = inputGain * *RightInputChannel;
				*LsOutBuffer = (DSPaccum)a1;
				*RsOutBuffer = (DSPaccum)a2;

				CentralOutBuffer++;
				LeftOutBuffer++;
				RightOutBuffer++;
				LeftInputChannel++;
				RightInputChannel++;
				LsOutBuffer++;
				RsOutBuffer++;


			}
			RsOutBuffer -= 16;
			LsOutBuffer -= 16;
			LeftOutBuffer -= 16;
			RightOutBuffer -= 16;

			multitap_echo( LsOutBuffer, LsOutBuffer, BLOCK_SIZE, stanje);

			for (i = 0; i < BLOCK_SIZE; i++)
			{
				DSPaccum a1 = *LsOutBuffer * gainLs;
				DSPaccum a2 = (DSPfract)a1 + *LeftOutBuffer;
				*LsOutBuffer = (DSPfract)a2;

				a1 = *RsOutBuffer * gainLs;
				a2 = (DSPfract)a1 + *RightOutBuffer;
				*RsOutBuffer = (DSPfract)a2;


				LeftOutBuffer++;
				RightOutBuffer++;
				LsOutBuffer++;
				RsOutBuffer++;
			}
		}
		
	
	}
	

