function send(abroad = false) {
  console.log(abroad ? 'Send abroad' : 'Send locally');
}
send();
send(true);
