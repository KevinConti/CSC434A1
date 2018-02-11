      real function part2(myvalue)
      real myvalue
      real localvalue/0/

      write(*,*)'Local value is:'
      write(*,*)localvalue
      write(*,*)'User inputted value is:'
      write(*,*)myvalue

      localvalue = localvalue + 1
      myvalue = myvalue + 1
      part2 = myvalue
      return
      end

