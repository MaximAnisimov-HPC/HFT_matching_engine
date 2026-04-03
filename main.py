import subprocess
while True:
    try:
        a = int(input('=== Choose method of benchmark ===\n'
            '1 - Benchmark One core\n'
            '2 - Benchmark Full Cores\n'
            '0 - Exit\n'
            'Your input ->'
            ))
        if (a == 1):
            subprocess.run('vers_1.bat', shell= True)
        elif (a == 2):
            subprocess.run('vers_2.bat', shell= True)
        elif (a==0):
            break
        else:
            print('You must choose num from 0 to 2!')
    except TypeError as e:
        print(f'You must write only integer values. Error: {e}')
    except ValueError as e:
        print(f'| You must write only integer values. | Error: {e} ')