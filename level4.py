data = {
'A1':['Akuntansi','Programming', 'Information System','Data Structure'],
'A2':['Akuntansi','Programming', 'Algorithm','Algorithm II'],
'A3':['Algorithm II','Algorithm', 'Information System','Data Structure']
}

import itertools
output = {f'{a},{b}': list(set(data[a]).intersection(data[b])) for a,b in itertools.combinations(data, 2)}
print(output)