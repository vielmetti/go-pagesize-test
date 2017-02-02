// go-pagesize-test -- Brad Fitzgerald as told to Edward Vielmetti
// test for the bug fixed by this commit:
// https://github.com/golang/go/commit/1b9499b06989d2831e5b156161d6c07642926ee1
//
package main

import (
        "os"
        "syscall"
)

/*                                                                                                                                           
#include <unistd.h>                                                                                                                          
*/
import "C"

func main() {
        if osSize, goSize := int(C.getpagesize()), syscall.Getpagesize(); osSize != goSize {
                println("OS page size =", osSize, "; go reports", goSize)
                os.Exit(1)
        }
}  
