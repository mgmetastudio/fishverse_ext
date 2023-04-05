dfx start --background --clean
npm install
dfx canister create fishverse_ext
dfx build fishverse_ext
dfx canister install fishverse_ext --argument="(principal \"tbkyq-bqgln-nqxui-tczya-zm4th-wu5kp-npbdf-rzonv-rtwzf-3gnkf-3ae\")"
dfx canister id fishverse_ext
dfx canister call fishverse_ext initBaseTokenTypes "(\"\")"
dfx canister call fishverse_ext setTokenTypeData "(123, \"Special Item\", \"https://internetcomputer.org/img/IC_logo_docs.svg\", \"Legendary\", \"Special\", \"Special details\", null, null)"
dfx canister call fishverse_ext mintNFT "(record { to = (variant { \"principal\" = principal \"tbkyq-bqgln-nqxui-tczya-zm4th-wu5kp-npbdf-rzonv-rtwzf-3gnkf-3ae\" }); metadata = opt vec{1}; tokenType = 123; } )"
dfx canister call fishverse_ext mintNFT "(record { to = (variant { \"principal\" = principal \"tbkyq-bqgln-nqxui-tczya-zm4th-wu5kp-npbdf-rzonv-rtwzf-3gnkf-3ae\" }); metadata = opt vec{1}; tokenType = 1; } )"
dfx canister call fishverse_ext supply "(\"\")"
dfx canister call fishverse_ext getTokenTypes "(\"\")"
dfx canister call fishverse_ext getTokenTypeData "(\"\")"
dfx canister call fishverse_ext reserveNFT "(record { to = (variant { \"principal\" = principal \"tbkyq-bqgln-nqxui-tczya-zm4th-wu5kp-npbdf-rzonv-rtwzf-3gnkf-3ae\" }); quantity = 2; tokenType = 1; } )"
dfx canister call fishverse_ext mintReservedNFT "(1)"

# if failing mint be sure to initialize ext canister with your own wallets principal, to see your principal id use command bellow
# dfx identity get-principal
