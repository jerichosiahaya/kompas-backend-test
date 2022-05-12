arrayString = ['budi','bermain','bola', 'di', 'halaman', 'rumah']

n = int(input('Enter the length of the sentence: '))
out = []

if n > len(arrayString):
  print('Parameter is bigger than length of the array')
else:
  temp = ' '.join(arrayString[0:n])
  out.append(temp)
  print(out)