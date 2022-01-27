

#include "multitap_echo.h"

/////////////////////////////////////////////////////////////////////////////////
// @Author	<student name>
// @Date		<date>  
//
// Function:
// multitap_echo_init
//
// @param - echoState - Control state structure
//		  - buffer - buffer for keeping delayed samples
//		  - echoBufLen - Length of buffer
//		  - delay - array containing delay values in number of samples
//		  - input_gain - gain to be applayed to input sample
//		  - tap_gain - array of gains to be applayed to each delayed sample
//		  - n_tap - number of taps (equals length of delay and tap_gain)
//
// @return - nothing
// Comment: Initialize echoState structure
//
// E-mail:	<email>
//
/////////////////////////////////////////////////////////////////////////////////
void multitap_echo_init(EchoState* echoState, DSPfract* buffer, const DSPint echoBufLen, const DSPint delay)
{

	DSPint i;
	for (i = 0; i < echoBufLen; i++)
	{
		*buffer = FRACT_NUM(0);
		buffer++;
	}
	buffer -= echoBufLen;
	echoState->pEchoBuff = buffer;
	echoState->bufferLength = echoBufLen;
	echoState->writeIndex = echoBufLen - 1;

	echoState->delay = delay;
	echoState->readIndex = echoBufLen - 1 - delay;



}

/////////////////////////////////////////////////////////////////////////////////
// @Author	<student name>
// @Date		<date>  
//
// Function:
// multitap_echo
//
// @param - pInbuf - Buffer with input samples
//		  - pOutbuf - Buffer with output samples
//		  - inputLen - Length of input and output buffer
//		  - echoState - Control state structure
//
// @return - nothing
// Comment: Apply echo to input samples
//
// E-mail:	<email>
//
/////////////////////////////////////////////////////////////////////////////////

void multitap_echo(__memX DSPfract* pInbuf,__memX DSPfract* pOutbuf, DSPint inputLen, EchoState* echoState)
{
	DSPint i;
	DSPint k;
	__memX DSPfract* EB;
	__memX DSPfract* RI;


	for (i = 0; i < inputLen; i++)
	{
		EB = echoState->pEchoBuff;
		for (k = 0; k < echoState->writeIndex; k++)
		{
			EB++;
		}
		*EB= *pInbuf;
		//echoState->pEchoBuff[echoState->writeIndex] = *pInbuf;
		echoState->writeIndex = (echoState->writeIndex + 1) % echoState->bufferLength;

		*pOutbuf = *pInbuf;

		RI = echoState->pEchoBuff;
		for (k = 0; k < echoState->readIndex; k++)
		{
			RI++;
		}

		*pOutbuf += *RI;//echoState->pEchoBuff[echoState->readIndex];
		echoState->readIndex = (echoState->readIndex + 1) % echoState->bufferLength;

		pOutbuf++;
		pInbuf++;
	}
}

