: Delete log files first.
cd ulaz_izlaz

del Tone_L1k_R3k_Model0_vs_Model1_200.txt
del Tone_L1k_R3k_Model0_vs_Model1_201.txt
del Tone_L1k_R3k_Model0_vs_Model1_020.txt
del Tone_L1k_R3k_Model0_vs_Model1_021.txt
del Tone_L1k_R3k_Model0_vs_Model1_320.txt

del Tone_L1k_R3k_Model1_vs_Model2_200.txt
del Tone_L1k_R3k_Model1_vs_Model2_201.txt
del Tone_L1k_R3k_Model1_vs_Model2_020.txt
del Tone_L1k_R3k_Model1_vs_Model2_021.txt
del Tone_L1k_R3k_Model1_vs_Model2_320.txt



cd ..

: Execute ProcessWavFile, Model_1, Model2 
cd Debug
ProcessWavFile.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel0_MODE_200.wav" "0" "1"
ProcessWavFile.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel0_MODE_201.wav" "1" "1"
ProcessWavFile.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel0_MODE_020.wav" "2" "1"
ProcessWavFile.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel0_MODE_021.wav" "3" "1"
ProcessWavFile.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel0_MODE_320.wav" "4" "1"

Model_1.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_200.wav" "0" "1"
Model_1.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_201.wav" "1" "1"
Model_1.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_020.wav" "2" "1"
Model_1.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_021.wav" "3" "1"
Model_1.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_320.wav" "4" "1"


Model2.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel2_MODE_200.wav" "0" "1"
Model2.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel2_MODE_201.wav" "1" "1"
Model2.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel2_MODE_020.wav" "2" "1"
Model2.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel2_MODE_021.wav" "3" "1"
Model2.exe "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k.wav" "C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel2_MODE_320.wav" "4" "1"

cd ..
cd tools
: Generate new logs
PCMCompare.exe C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel0_MODE_200.wav C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_200.wav -w 2>C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k_Model0_vs_Model_1_200.txt
PCMCompare.exe C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel0_MODE_201.wav C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_201.wav -w 2>C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k_Model0_vs_Model_1_201.txt
PCMCompare.exe C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel0_MODE_020.wav C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_020.wav -w 2>C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k_Model0_vs_Model_1_020.txt
PCMCompare.exe C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel0_MODE_021.wav C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_021.wav -w 2>C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k_Model0_vs_Model_1_021.txt
PCMCompare.exe C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel0_MODE_320.wav C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_320.wav -w 2>C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k_Model0_vs_Model_1_320.txt

PCMCompare.exe C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_200.wav C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel2_MODE_200.wav -w 2>C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k_Model_1_vs_Model2_200.txt
PCMCompare.exe C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_201.wav C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel2_MODE_201.wav -w 2>C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k_Model_1_vs_Model2_201.txt
PCMCompare.exe C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_020.wav C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel2_MODE_020.wav -w 2>C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k_Model_1_vs_Model2_020.txt
PCMCompare.exe C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_021.wav C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel2_MODE_021.wav -w 2>C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k_Model_1_vs_Model2_021.txt
PCMCompare.exe C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel1_MODE_320.wav C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\izlazModel2_MODE_320.wav -w 2>C:\Users\38163\Downloads\AADSP2Projekat2021\Prjtemplates\ProcessWavFile\ulaz_izlaz\Tone_L1k_R3k_Model_1_vs_Model2_320.txt