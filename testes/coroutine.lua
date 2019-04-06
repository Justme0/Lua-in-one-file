crt = coroutine.create(
  function (n)
    while (true) do
      coroutine.yield(n % 2)
      n = n + 1
    end
  end
)

status, retval =
  coroutine.resume(crt, 1)

if status then
  print("parity: " .. retval)
else
  print("couldn't resume crt")
end

_, retval = coroutine.resume(crt)
print("parity: " .. retval)
