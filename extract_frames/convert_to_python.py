import numpy as np
from scipy import misc
import cPickle
import os
import os.path

maxsize = 50000

# Double check if order of data in my arrays is correct.

data = np.ndarray(shape=(maxsize, 32 * 32 * 3), dtype=np.uint8)
names = np.ndarray(shape=(maxsize), dtype=np.dtype('a25'))

d='/Users/wojto/img_32_32'
idx = 0
for o in os.listdir(d): 
  o2 = os.path.join(d,o)
  if os.path.isdir(o2):
    for o3 in os.listdir(o2): 
      o4 = os.path.join(o2,o3)
      if (os.path.isfile(o4)) & (o3.find('.png') > 0):
        try:  	
          l = misc.imread(o4)
          data[idx, :] = np.reshape(l, 32 * 32 * 3)
          names[idx] = o3[0:-4]
          idx += 1
        except:   
          print 'Exception\n'     
          if idx % 2 == 1:
            idx -= 1
        print o4
        if (idx - 1) % 2 == 0:
          assert(names[idx - 1][-1] == 'A')
        else:
          assert(names[idx - 1][-1] == 'B')        

data = data[0:(idx - 1), :]
names = names[0:(idx - 1)]

with open('/Users/wojto/extract_frames/data_frames', 'wb') as fp:
  cPickle.dump(data, fp)
  cPickle.dump(names, fp)
