roman = {'I':1,'V':5,'X':10,'L':50,'C':100,'D':500,'M':1000}
class Converter:
    def romanToInt(self, S: str) -> int:
        result= 0
        for i in range(len(S)-1,-1,-1):
            num = roman[S[i]]
            if 3*num < result: 
                result = result-num
            else: 
                result = result+num
        return result

obj = Converter()
x = input("Input roman number: ")
print(obj.romanToInt(x))