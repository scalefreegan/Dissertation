<TeXmacs|1.0.6>

<style|generic>

<\body>
  \ \ \ 

  <\equation*>
    \<tau\><frac|d y<rsub|i>|d t<rsub|i>> = -y<rsub|i>
    +<big|sum><rsup|p><rsub|j=1>\<beta\><rsub|j>x<rsub|i,j>
  </equation*>

  <\equation*>
    \<tau\><frac|y<rsub|i+1>-y<rsub|i>|t<rsub|i+1>-t<rsub|i>>+y<rsub|i>=<big|sum><rsup|p><rsub|j=1>\<beta\><rsub|j>x<rsub|i,j><with|mode|text|
    \ (time series)>
  </equation*>

  <\equation*>
    <with|color|grey|<neg|\<tau\><frac|y<rsub|i+1>-y<rsub|i>|t<rsub|i+1>-t<rsub|i>>>><with|color|grey|+>y<rsub|i>=<big|sum><rsup|p><rsub|j=1>\<beta\><rsub|j>x<rsub|i,j><with|mode|text|
    \ (steady state)>
  </equation*>

  \;

  \;

  <\equation*>
    <with|mode|text|<with|mode|math|<wide|\<beta\>|\<vect\>>=arg
    min<left|{><big|sum><rsup|N><rsub|i=1><left|(>y<rsub|i>-<with|color|grey|<neg|<with|color|grey|\<beta\><rsub|0>->>><big|sum><rsup|p><rsub|j=1>\<beta\><rsub|j>x<rsub|i,j><right|)><rsup|2><right|}>>>
  </equation*>

  <\equation*>
    <big|sum><rsub|j=1><rsup|p>\|\<beta\><rsub|j>\|\<leq\>\<lambda\><rsub|1>\|\<beta\><rsub|ols>\|<with|mode|text|
    \ \ \ \ L><rsub|1><with|mode|text| constraint>
  </equation*>

  <\equation*>
    <with|mode|text|<with|mode|math|<wide|\<beta\>|\<vect\>>=arg
    min<left|{><big|sum><rsup|N><rsub|i=1><left|(>y<rsub|i>-<with|color|grey|<neg|\<beta\><rsub|0>->><big|sum><rsup|p><rsub|j=1>\<beta\><rsub|j>x<rsub|i,j><right|)><rsup|2>+\<lambda\><rsub|1><big|sum><rsub|j=1><rsup|p>\|\<beta\><rsub|j>\|<right|}>>>
  </equation*>

  <\equation*>
    <big|sum><rsub|j=1><rsup|p>\<beta\><rsup|2><rsub|j>\<leq\>\<lambda\><rsub|2>\<beta\><rsup|2><rsub|ols><with|mode|text|
    \ \ \ \ L><rsub|2><with|mode|text| constraint>
  </equation*>

  <\equation*>
    <with|mode|text|<with|mode|math|<wide|\<beta\>|\<vect\>>=arg
    min<left|{><big|sum><rsup|N><rsub|i=1><left|(>y<rsub|i>-<with|color|grey|<neg|\<beta\><rsub|0>->><big|sum><rsup|p><rsub|j=1>\<beta\><rsub|j>x<rsub|i,j><right|)><rsup|2>+\<lambda\><rsub|2><big|sum><rsub|j=1><rsup|p>\<beta\><rsup|2><rsub|j><right|}>>>
  </equation*>

  <\equation*>
    <with|mode|text|<with|mode|math|<wide|\<beta\>|\<vect\>>=arg
    min<left|{><big|sum><rsup|N><rsub|i=1><left|(>y<rsub|i>-<with|color|grey|<neg|\<beta\><rsub|0>->><big|sum><rsup|p><rsub|j=1>\<beta\><rsub|j>x<rsub|i,j><right|)><rsup|2>+\<lambda\><rsub|1><big|sum><rsub|j=1><rsup|p>\|\<beta\><rsub|j>\|+\<lambda\><rsub|2><big|sum><rsub|j=1><rsup|p>\<beta\><rsup|2><rsub|j><right|}>>>
  </equation*>

  <\equation*>
    <wide|\<beta\>|\<vect\>><with|mode|text|<with|mode|math|=arg
    min<left|{><big|sum><rsup|N><rsub|i=1><left|(>y<rsub|i>-<with|color|grey|<neg|\<beta\><rsub|0>->><big|sum><rsup|p><rsub|j=1>\<beta\><rsub|j>x<rsub|i,j><right|)><rsup|2>+<big|sum><rsub|j=1><rsup|p><left|(>\<lambda\><rsub|1>\|\<beta\><rsub|j>\|+\<lambda\><rsub|2>\<beta\><rsup|2><rsub|j><right|)><right|}>>>
  </equation*>

  <\equation*>
    <wide|\<beta\>|\<vect\>><with|mode|text|<with|mode|math|=arg
    min<left|{><big|sum><rsup|N><rsub|i=1><left|(>y<rsub|i>-<with|color|grey|<neg|\<beta\><rsub|0>->><big|sum><rsup|p><rsub|j=1>\<beta\><rsub|j>x<rsub|i,j><right|)><rsup|2>+<big|sum><rsub|j=1><rsup|p>\<b-w\><rsub|i><left|(>\<lambda\><rsub|1>\|\<beta\><rsub|j>\|+\<lambda\><rsub|2>\<beta\><rsup|2><rsub|j><right|)><right|}>>>
  </equation*>

  \;
</body>

<\initial>
  <\collection>
    <associate|sfactor|3>
  </collection>
</initial>