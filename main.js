/*
 * Wallet detection only. This is deliberately not a wallet connection or claim flow.
 * It does not request accounts, sign data, read a chain, or send transactions.
 */
const connectButton = document.querySelector('#connect-wallet');
const walletStatus = document.querySelector('#wallet-status');

connectButton.addEventListener('click', () => {
  if (window.ethereum) {
    walletStatus.textContent = 'Wallet provider detected. Wallet connection and claims are not enabled on this starter page.';
  } else {
    walletStatus.textContent = 'No browser wallet provider detected.';
  }
});
