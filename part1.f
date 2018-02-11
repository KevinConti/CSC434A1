      program part1
c Author: Kevin Conti
c Date written: 02/11/18
c Purpose: This class takes user input for the area of a cylander,
c and then iterates through radii 0.1-10.0 to determine the maximum
c volume
      real radii(100)
      real heights(100)
      real sa(100)
      real vol(100)
      real area
      real maxvol
      integer i
      real scalar
      parameter (pi = 3.14159)
      integer maxIndex

      write(*,*)'Please enter the area of sheet metal to work with'
      read(*,*)area 
      write(*,*)'You entered:'
      write(*,*)area
c Assign default values
      maxvol = 0.0
      scalar = 0.1
      
      write(*,*)'radius   height   area   volume'
      write(*,*)'----------------------------------------'
      do 10 i = 1, 100 
          radii(i) = scalar 
          scalar = scalar + 0.1
c          write(*, '(F3.1)') radii(i)
c area calculation: h = A/2*pi*r - r
          heights(i) = area/(2*pi*radii(i)) - radii(i)
c this line should print the proper heights          write(*, '(F15.3)') heights(i)
c volume calculation: V = pi*r^2*h
          vol(i) = pi*radii(i)**2*heights(i) 
c this line should print the proper volumes          write(*, '(F10.3)') vol(i)
          if (vol(i) .GT. maxvol) then
              maxvol = vol(i)
              maxIndex = i
          endif
c Print the table
          write(*, '(F4.1, F10.2, F10.2, F10.2)')radii(i), heights(i), 
     + area, vol(i)

  10  continue
      write(*,*)'------------------------------'
      write(*,*)'The maximum volume is:'
      write(*,'(F10.3)')maxvol
      write(*,*)'With a radius of:'
      write(*,'(F15.2)')radii(maxIndex)
      write(*,*)'and a height of:'
      write(*,'(F15.3)')heights(maxIndex)
      stop
      end

