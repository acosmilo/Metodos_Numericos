## Copyright (C) 2019 PCamilo
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} SEL_LU (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: PCamilo <PCamilo@DESKTOP-20NV149>
## Created: 2019-11-22

function X = SEL_LU (A,B)

[L U P]=lu(A);

B1=P*B';
Y=Sistem_T_inf(L,B1);
X=Sistem_T_sup(U,Y);
endfunction
