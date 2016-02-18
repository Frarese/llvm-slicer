###LLVM slicer
This is a static slicer based on the Mark Weiser's algorithm in [1]. It is
augmented to perform an inter-procedural analysis. The initial criteria
considered here are all assert_fail function calls (which is effectively every
place where an assert is in the code).

### How To Build
  - `mkdir LLVMSlicer.obj`
  - `cd !$`
  - `cmake   -DCMAKE_C_COMPILER=/software/gcc-4.8.2/bin/gcc -DCMAKE_CXX_COMPILER=/software/gcc-4.8.2/bin/g++ ../LLVMSlicer`
  - `cmake -build`

###How To Run
  - To get a mapping of binary to llvm-ir. This pass numbers the llvm-irs in a specific function (-mapping-function) and for each of them specifies the info of the corresponding binary mneumonics. This analysis pass used the metadata add by mcsema to infer this mapping.
    * `opt -load=LVMSlicer.so  -srcline-mapping -mapping-function=sub_8048420 -mapping-output=mapping.txt  simple.bc -o simple.analysed.bc` 
      * sub_8048420: The function we want to focus on.
      * mapping.txt: The Output file with mapping. If not specifed the output will be dumped in stdout
  -  From the previous mapping, choose a line number (say N) of the llvm-ir to be selected as the static slicing criteria. __Not Complete: Under Progress__
    * `opt -load=LLVMSlicer.so  -mapping-function=sub_8048420 -criterion-line=N -create-hammock-cfg -slice-inter  example2.bc  -o example2.sliced.bc`
      * If -mapping-function and -criterion-line are omitted, the slicing criteria will be selected as an assert (if available).



###Acknowledgement
This worked is borrowed from 
Jiri Slaby <jirislaby@gmail.com>
https://github.com/jirislaby/LLVMSlicer
