import subprocess

for i in range(5):
    outname = 'si.scf.out_{}'.format(i)
    p = subprocess.Popen(["pw.x <si.scf.in> outname"], shell = True)
    output, err = p.communicate()
    #q = subprocess.Popen(['grep ! outname'], shell = True)
    #output, err = q.communicate()
    #print (output)
