dfx start --background --clean
npm install
dfx canister create fishverse_ext
dfx build fishverse_ext
dfx canister install fishverse_ext --argument="(principal \"tbkyq-bqgln-nqxui-tczya-zm4th-wu5kp-npbdf-rzonv-rtwzf-3gnkf-3ae\")"
dfx canister id fishverse_ext
dfx canister call fishverse_ext mintNFT "(record { to = (variant { \"principal\" = principal \"tbkyq-bqgln-nqxui-tczya-zm4th-wu5kp-npbdf-rzonv-rtwzf-3gnkf-3ae\" }); metadata = opt vec{1}; } )"
dfx canister call fishverse_ext supply "(\"\")"

# if failing mint be sure to use same principal id as you wallet, to see you principal id use command bellow
# dfx identity get-principal