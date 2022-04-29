namespace homework5

open nat

-- 1
theorem mul_add (m n k : nat) : m * (n + k) = (m * n) + (m * k) :=
nat.rec_on k
    (show m * (n + 0) = (m * n) + (m * 0), from calc
        m * (n + 0) = m * n             : by rw add_zero
                ... = (m * n) + 0       : by rw add_zero
                ... = (m * n) + (m * 0) : by rw mul_zero)
    (assume k,
        assume ih : m * (n + k) = (m * n) + (m * k),
        show m * (n + succ k) = (m * n) + (m * succ k), from calc
            m * (n + succ k) = m * (succ (n + k))       : rfl
                           ... = m * (n + k) + m          : by rw mul_succ
                           ... = (m * n) + (m * k) + m    : by rw ih
                           ... = (m * n) + ((m * k) + m)  : by rw add_assoc
                           ... = (m * n) + (m * succ k) : by rw mul_succ)


-- 2
theorem zero_mul (n : nat) : 0 * n = 0 :=
nat.rec_on n
    (show 0 * 0 = 0, from mul_zero 0)
    (assume n,
        assume ih : 0 * n = 0,
        show 0 * succ n = 0, from calc
            0 * succ n = 0 * n + 0 : by rw mul_succ
                   ... = 0 + 0     : by rw ih
                   ... = 0         : by rw add_zero)



-- 3
theorem one_mul (n : nat) : 1 * n = n :=
nat.rec_on n
    (show 1 * 0 = 0, from mul_zero 1)
    (assume n,
        assume ih : 1 * n = n,
        show 1 * succ n = succ n, from calc
            1 * succ n = 1 * n + 1 : by rw mul_succ
                   ... = n + 1     : by rw ih
                   ... = succ n    : rfl)

-- 4
theorem mul_assoc (m n k : nat) : (m * n) * k = m * (n * k) :=
nat.rec_on k
    (show (m * n) * 0 = m * (n * 0), from calc
        (m * n) * 0 = 0           : by rw mul_zero
                ... = m * 0       : by rw mul_zero
                ... = m * (n * 0) : by rw mul_zero n)
                
    (assume k,
        assume ih : (m * n) * k = m * (n * k),
        show (m * n) * succ k = m * (n * succ k), from calc
            (m * n) * succ k = (m * n) * k + (m * n) : by rw mul_succ
                           ... = m * (n * k) + (m * n) : by rw ih
                           ... = m * (n * k + n)       : by rw mul_add
                           ... = m * (n * succ k)    : by rw mul_succ)

-- 5
theorem mul_comm (m n : nat) : m * n = n * m :=
nat.rec_on n
    (show m * 0 = 0 * m, from calc
        m * 0 = 0     : by rw mul_zero
          ... = 0 * m : by rw zero_mul)
    (assume n,
        assume ih : m * n = n * m,
        show m * succ n = succ n * m, from calc
            m * succ n = m * n + m : by rw mul_succ
                     ... = n * m + m : by rw ih
                     ... = succ n * m : by rw succ_mul)
end homework5
