#include <stdio.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include <string.h>
#include "processing.h"

__memX fract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
__memX fract outputBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
 
int main( int argc,  char *argv[])
 {

	__memX  WAVREAD_HANDLE *wav_in;
	__memX  WAVWRITE_HANDLE *wav_out;
	
	char WavInputName[256];
	char WavOutputName[256];
	
    int nChannels;
	int bitsPerSample;
    int sampleRate;
    int iNumSamples;
    int i;
    DSPfract buffer[BLOCK_SIZE];

    EchoState stanje;
   	multitap_echo_init(&stanje, buffer, BLOCK_SIZE, 1);

	// Init channel buffers
	for(i=0; i<MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i],0,BLOCK_SIZE);

	for(i=0; i<MAX_NUM_CHANNEL; i++)
			memset(&outputBuffer[i],0,BLOCK_SIZE);



	// Open input wav file
	//-------------------------------------------------
	strcpy(WavInputName,"C:\\Users\\38163\\Desktop\\WhiteNoise.wav" );
	wav_in = cl_wavread_open(WavInputName);
	 if(wav_in == NULL)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	// Read input wav header
	//-------------------------------------------------
	nChannels = cl_wavread_getnchannels(wav_in);
    bitsPerSample = cl_wavread_bits_per_sample(wav_in);
    sampleRate = cl_wavread_frame_rate(wav_in);
    iNumSamples =  cl_wavread_number_of_frames(wav_in);
	//-------------------------------------------------
	
	// Open output wav file
	//-------------------------------------------------
	strcpy(WavOutputName,"C:\\Users\\38163\\Desktop\\WhiteNoise_model3.wav");
	wav_out = cl_wavwrite_open(WavOutputName, bitsPerSample, 6, sampleRate);
	if(!wav_out)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	
	// Processing loop
	//-------------------------------------------------	
    {
		int i;
		int j;
		int k;
		int sample;
		
		// exact file length should be handled correctly...
		for(i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{	
			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<2; k++)
				{	
					sample = cl_wavread_recvsample(wav_in);
        			sampleBuffer[k][j] = rbits(sample);
				}
			}

			//processing();
			processing( sampleBuffer,outputBuffer, &stanje);

			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<6; k++)
				{	
					sample = bitsr(outputBuffer[k][j]);
					cl_wavwrite_sendsample(wav_out, sample);
				}
			}
		}
	}
	
	// Close files
	//-------------------------------------------------	
    cl_wavread_close(wav_in);
    cl_wavwrite_close(wav_out);
	//-------------------------------------------------	

    return 0;
 }
