///////////////////////////////////////////////////////////////////////
// Find two numbers which only appear once in an array
// Input: data - an array contains two number appearing exactly once,
//               while others appearing exactly twice
//        length - the length of data
// Output: num1 - the first number appearing once in data
//         num2 - the second number appearing once in data
///////////////////////////////////////////////////////////////////////
void FindNumsAppearOnce(int data[], int length, int &num1, int &num2)
{
      if (length < 2)
            return;
 
      // get num1 ^ num2
      int resultExclusiveOR = 0;
      for (int i = 0; i < length; ++ i)
            resultExclusiveOR ^= data[i];
 
      // get index of the first bit, which is 1 in resultExclusiveOR
      unsigned int indexOf1 = FindFirstBitIs1(resultExclusiveOR);
 
      num1 = num2 = 0;
      for (int j = 0; j < length; ++ j)
      {
            // divide the numbers in data into two groups,
            // the indexOf1 bit of numbers in the first group is 1,
            // while in the second group is 0
            if(IsBit1(data[j], indexOf1))
                  num1 ^= data[j];
            else
                  num2 ^= data[j];
      }
}
 
///////////////////////////////////////////////////////////////////////
// Find the index of first bit which is 1 in num (assuming not 0)
///////////////////////////////////////////////////////////////////////
unsigned int FindFirstBitIs1(int num)
{
      int indexBit = 0;
      while (((num & 1) == 0) && (indexBit < 32))
      {
            num = num >> 1;
            ++ indexBit;
      }
 
      return indexBit;
}
 
///////////////////////////////////////////////////////////////////////
// Is the indexBit bit of num 1?
///////////////////////////////////////////////////////////////////////
bool IsBit1(int num, unsigned int indexBit)
{
      num = num >> indexBit;
 
      return (num & 1);
}