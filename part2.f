      real function part2(myvalue)
c Author: Kevin Conti
c Date written: 02/11/18
c Purpose: An external function written to show that local variables in FORTRAN are, in fact,
c static variables, and as such will not lose their value over multiple function calls
      real myvalue
      real localvalue/0/
c 'myvalue' is the value received as a parameter
c 'localvalue' is a local variable that is initialized to zero
      write(*,*)'Local value is:'
      write(*,'(F5.2)')localvalue
      write(*,*)'User inputted value is:'
      write(*,'(F5.2)')myvalue
c increment each value by one. If static, these variables should maintain the same value
c over multiple calls
      localvalue = localvalue + 1
      myvalue = myvalue + 1
      part2 = myvalue
      return
      end

