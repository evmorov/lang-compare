def send(abroad = false)
  p abroad ? 'Send abroad' : 'Send locally'
end
send
# "Send locally"
send true
# "Send abroad"
